/*===-- clang-c/CXString.h - C Index strings  --------------------*- C -*-===*\
|*                                                                            *|
|*                     The LLVM Compiler Infrastructure                       *|
|*                                                                            *|
|* This file is distributed under the University of Illinois Open Source      *|
|* License. See LICENSE.TXT for details.                                      *|
|*                                                                            *|
|*===----------------------------------------------------------------------===*|
|*                                                                            *|
|* This header provides the interface to C Index strings.                     *|
|*                                                                            *|
\*===----------------------------------------------------------------------===*/

module deimos.clang.cxstring;

extern (C):

/**
 * \defgroup CINDEX_STRING String manipulation routines
 * \ingroup CINDEX
 *
 * @{
 */

/**
 * \brief A character string.
 *
 * The \c CXString type is used to return strings from the interface when
 * the ownership of that string might differ from one call to the next.
 * Use \c clang_getCString() to retrieve the string data and, once finished
 * with the string data, call \c clang_disposeString() to free the string.
 */
struct CXString {
  void* data;
  uint private_flags;
}

/**
 * \brief Retrieve the character data associated with the given string.
 */
immutable(char)* clang_getCString(CXString string);

/**
 * \brief Free the given string.
 */
void clang_disposeString(CXString string);

/**
 * @}
 */
