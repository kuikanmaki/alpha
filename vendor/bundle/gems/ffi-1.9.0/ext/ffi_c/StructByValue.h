/*
 * Copyright (c) 2009, Wayne Meissner
 *
 * All rights reserved.
 *
 * This file is part of ruby-ffi.
 *
 * This code is free software: you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License version 3 only, as
 * published by the Free Software Foundation.
 *
 * This code is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License
 * version 3 for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * version 3 along with this work.  If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef RBFFI_STRUCTBYVALUE_H
#define	RBFFI_STRUCTBYVALUE_H

#include <ruby.h>
#include "Type.h"

#ifdef	__cplusplus
extern "C" {
#endif

typedef struct StructByValue_ {
    Type base;
    VALUE rbStructClass;
    VALUE rbStructLayout;
} StructByValue;

void rbffi_StructByValue_Init(VALUE moduleFFI);

extern VALUE rbffi_StructByValueClass;

#ifdef	__cplusplus
}
#endif

#endif	/* RBFFI_STRUCTBYVALUE_H */

