(module
 (type $i32_i64_=>_none (func (param i32 i64)))
 (type $i32_=>_i64 (func (param i32) (result i64)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i64_=>_none (func (param i32 i32 i64)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $i32_i32_=>_i64 (func (param i32 i32) (result i64)))
 (type $i64_i64_=>_i64 (func (param i64 i64) (result i64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00")
 (data (i32.const 64) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00")
 (data (i32.const 128) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s\00")
 (data (i32.const 176) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 224) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 288) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 352) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 416) "\07\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\91\04\00\00\02\00\00\001\00\00\00\02\00\00\00\11\01\00\00\02\00\00\00\10\00\00\00\00\00\00\00")
 (table $0 1 funcref)
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/collectLock (mut i32) (i32.const 0))
 (global $~lib/gc/gc.auto (mut i32) (i32.const 1))
 (global $assembly/index/Int32Array_ID i32 (i32.const 3))
 (global $assembly/index/Uint8Array_ID i32 (i32.const 4))
 (global $assembly/index/POLYNOMIAL_DEGREE i32 (i32.const 53))
 (global $assembly/index/POLYNOMIAL_SHIFT i32 (i32.const 45))
 (global $assembly/index/tables_initialized (mut i32) (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $assembly/index/modTable (mut i32) (i32.const 0))
 (global $assembly/index/outTable (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 416))
 (global $~lib/heap/__heap_base i32 (i32.const 476))
 (global $assembly/index/Rabin i32 (i32.const 6))
 (export "memory" (memory $0))
 (export "__alloc" (func $~lib/rt/tlsf/__alloc))
 (export "__retain" (func $~lib/rt/pure/__retain))
 (export "__release" (func $~lib/rt/pure/__release))
 (export "__collect" (func $~lib/rt/pure/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "Int32Array_ID" (global $assembly/index/Int32Array_ID))
 (export "Uint8Array_ID" (global $assembly/index/Uint8Array_ID))
 (export "degree" (func $assembly/index/degree))
 (export "mod" (func $assembly/index/mod))
 (export "Rabin" (global $assembly/index/Rabin))
 (export "Rabin#get:window" (func $assembly/index/Rabin#get:window))
 (export "Rabin#set:window" (func $assembly/index/Rabin#set:window))
 (export "Rabin#get:window_size" (func $assembly/index/Rabin#get:window_size))
 (export "Rabin#set:window_size" (func $assembly/index/Rabin#set:window_size))
 (export "Rabin#get:wpos" (func $assembly/index/Rabin#get:wpos))
 (export "Rabin#set:wpos" (func $assembly/index/Rabin#set:wpos))
 (export "Rabin#get:count" (func $assembly/index/Rabin#get:count))
 (export "Rabin#set:count" (func $assembly/index/Rabin#set:count))
 (export "Rabin#get:pos" (func $assembly/index/Rabin#get:pos))
 (export "Rabin#set:pos" (func $assembly/index/Rabin#set:pos))
 (export "Rabin#get:start" (func $assembly/index/Rabin#get:start))
 (export "Rabin#set:start" (func $assembly/index/Rabin#set:start))
 (export "Rabin#get:digest" (func $assembly/index/Rabin#get:digest))
 (export "Rabin#set:digest" (func $assembly/index/Rabin#set:digest))
 (export "Rabin#get:chunk_start" (func $assembly/index/Rabin#get:chunk_start))
 (export "Rabin#set:chunk_start" (func $assembly/index/Rabin#set:chunk_start))
 (export "Rabin#get:chunk_length" (func $assembly/index/Rabin#get:chunk_length))
 (export "Rabin#set:chunk_length" (func $assembly/index/Rabin#set:chunk_length))
 (export "Rabin#get:chunk_cut_fingerprint" (func $assembly/index/Rabin#get:chunk_cut_fingerprint))
 (export "Rabin#set:chunk_cut_fingerprint" (func $assembly/index/Rabin#set:chunk_cut_fingerprint))
 (export "Rabin#get:polynomial" (func $assembly/index/Rabin#get:polynomial))
 (export "Rabin#set:polynomial" (func $assembly/index/Rabin#set:polynomial))
 (export "Rabin#get:minsize" (func $assembly/index/Rabin#get:minsize))
 (export "Rabin#set:minsize" (func $assembly/index/Rabin#set:minsize))
 (export "Rabin#get:maxsize" (func $assembly/index/Rabin#get:maxsize))
 (export "Rabin#set:maxsize" (func $assembly/index/Rabin#set:maxsize))
 (export "Rabin#get:mask" (func $assembly/index/Rabin#get:mask))
 (export "Rabin#set:mask" (func $assembly/index/Rabin#set:mask))
 (export "Rabin#constructor" (func $assembly/index/Rabin#constructor))
 (export "Rabin#fingerprint" (func $assembly/index/Rabin#fingerprint))
 (start $~start)
 (func $~lib/rt/tlsf/removeBlock (; 1 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $1
  i32.load
  local.set $2
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 277
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $3
  local.get $3
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $3
   i32.const 1073741808
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 279
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $4
   local.get $3
   i32.const 4
   i32.shr_u
   local.set $5
  else
   i32.const 31
   local.get $3
   i32.clz
   i32.sub
   local.set $4
   local.get $3
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $5
   local.get $4
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $4
  end
  local.get $4
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $5
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 292
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=16
  local.set $6
  local.get $1
  i32.load offset=20
  local.set $7
  local.get $6
  if
   local.get $6
   local.get $7
   i32.store offset=20
  end
  local.get $7
  if
   local.get $7
   local.get $6
   i32.store offset=16
  end
  local.get $1
  local.get $0
  local.set $10
  local.get $4
  local.set $9
  local.get $5
  local.set $8
  local.get $10
  local.get $9
  i32.const 4
  i32.shl
  local.get $8
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  i32.eq
  if
   local.get $0
   local.set $11
   local.get $4
   local.set $10
   local.get $5
   local.set $9
   local.get $7
   local.set $8
   local.get $11
   local.get $10
   i32.const 4
   i32.shl
   local.get $9
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $8
   i32.store offset=96
   local.get $7
   i32.eqz
   if
    local.get $0
    local.set $9
    local.get $4
    local.set $8
    local.get $9
    local.get $8
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.set $9
    local.get $0
    local.set $8
    local.get $4
    local.set $11
    local.get $9
    i32.const 1
    local.get $5
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $9
    local.set $10
    local.get $8
    local.get $11
    i32.const 2
    i32.shl
    i32.add
    local.get $10
    i32.store offset=4
    local.get $9
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $4
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (; 2 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 205
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.set $2
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 207
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.set $3
  local.get $3
  i32.const 16
  i32.add
  local.get $3
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  local.set $4
  local.get $4
  i32.load
  local.set $5
  local.get $5
  i32.const 1
  i32.and
  if
   local.get $2
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.add
   local.get $5
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $3
   local.get $3
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $4
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $2
    i32.const 3
    i32.and
    local.get $3
    i32.or
    local.tee $2
    i32.store
    local.get $1
    local.set $6
    local.get $6
    i32.const 16
    i32.add
    local.get $6
    i32.load
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    local.set $4
    local.get $4
    i32.load
    local.set $5
   end
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $1
   local.set $6
   local.get $6
   i32.const 4
   i32.sub
   i32.load
   local.set $6
   local.get $6
   i32.load
   local.set $3
   local.get $3
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 32
    i32.const 228
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.add
   local.get $2
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $7
   local.get $7
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $6
    call $~lib/rt/tlsf/removeBlock
    local.get $6
    local.get $3
    i32.const 3
    i32.and
    local.get $7
    i32.or
    local.tee $2
    i32.store
    local.get $6
    local.set $1
   end
  end
  local.get $4
  local.get $5
  i32.const 2
  i32.or
  i32.store
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $8
  local.get $8
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $8
   i32.const 1073741808
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 243
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 16
  i32.add
  local.get $8
  i32.add
  local.get $4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 244
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $8
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $9
   local.get $8
   i32.const 4
   i32.shr_u
   local.set $10
  else
   i32.const 31
   local.get $8
   i32.clz
   i32.sub
   local.set $9
   local.get $8
   local.get $9
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $10
   local.get $9
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $9
  end
  local.get $9
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $10
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 260
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $7
  local.get $9
  local.set $3
  local.get $10
  local.set $6
  local.get $7
  local.get $3
  i32.const 4
  i32.shl
  local.get $6
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $11
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  local.get $11
  i32.store offset=20
  local.get $11
  if
   local.get $11
   local.get $1
   i32.store offset=16
  end
  local.get $0
  local.set $12
  local.get $9
  local.set $7
  local.get $10
  local.set $3
  local.get $1
  local.set $6
  local.get $12
  local.get $7
  i32.const 4
  i32.shl
  local.get $3
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $6
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $9
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.set $13
  local.get $9
  local.set $12
  local.get $0
  local.set $3
  local.get $9
  local.set $6
  local.get $3
  local.get $6
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 1
  local.get $10
  i32.shl
  i32.or
  local.set $7
  local.get $13
  local.get $12
  i32.const 2
  i32.shl
  i32.add
  local.get $7
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (; 3 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $1
  local.get $2
  i32.le_u
  if (result i32)
   local.get $1
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  if (result i32)
   local.get $2
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 386
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $3
  local.get $3
  i32.load offset=1568
  local.set $4
  i32.const 0
  local.set $5
  local.get $4
  if
   local.get $1
   local.get $4
   i32.const 16
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 32
    i32.const 396
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 16
   i32.sub
   local.get $4
   i32.eq
   if
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
    local.get $4
    i32.load
    local.set $5
   else
    nop
   end
  else
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 32
    i32.const 408
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.sub
  local.set $6
  local.get $6
  i32.const 48
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $6
  i32.const 16
  i32.const 1
  i32.shl
  i32.sub
  local.set $7
  local.get $1
  local.set $8
  local.get $8
  local.get $7
  i32.const 1
  i32.or
  local.get $5
  i32.const 2
  i32.and
  i32.or
  i32.store
  local.get $8
  i32.const 0
  i32.store offset=16
  local.get $8
  i32.const 0
  i32.store offset=20
  local.get $1
  local.get $6
  i32.add
  i32.const 16
  i32.sub
  local.set $4
  local.get $4
  i32.const 0
  i32.const 2
  i32.or
  i32.store
  local.get $0
  local.set $9
  local.get $4
  local.set $3
  local.get $9
  local.get $3
  i32.store offset=1568
  local.get $0
  local.get $8
  call $~lib/rt/tlsf/insertBlock
  i32.const 1
 )
 (func $~lib/rt/tlsf/maybeInitialize (; 4 ;) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  global.get $~lib/rt/tlsf/ROOT
  local.set $0
  local.get $0
  i32.eqz
  if
   global.get $~lib/heap/__heap_base
   i32.const 15
   i32.add
   i32.const -16
   i32.and
   local.set $1
   memory.size
   local.set $2
   local.get $1
   i32.const 1572
   i32.add
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $3
   local.get $3
   local.get $2
   i32.gt_s
   if (result i32)
    local.get $3
    local.get $2
    i32.sub
    memory.grow
    i32.const 0
    i32.lt_s
   else
    i32.const 0
   end
   if
    unreachable
   end
   local.get $1
   local.set $0
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   local.set $5
   i32.const 0
   local.set $4
   local.get $5
   local.get $4
   i32.store offset=1568
   i32.const 0
   local.set $5
   loop $for-loop|0
    local.get $5
    i32.const 23
    i32.lt_u
    local.set $4
    local.get $4
    if
     local.get $0
     local.set $8
     local.get $5
     local.set $7
     i32.const 0
     local.set $6
     local.get $8
     local.get $7
     i32.const 2
     i32.shl
     i32.add
     local.get $6
     i32.store offset=4
     i32.const 0
     local.set $8
     loop $for-loop|1
      local.get $8
      i32.const 16
      i32.lt_u
      local.set $7
      local.get $7
      if
       local.get $0
       local.set $11
       local.get $5
       local.set $10
       local.get $8
       local.set $9
       i32.const 0
       local.set $6
       local.get $11
       local.get $10
       i32.const 4
       i32.shl
       local.get $9
       i32.add
       i32.const 2
       i32.shl
       i32.add
       local.get $6
       i32.store offset=96
       local.get $8
       i32.const 1
       i32.add
       local.set $8
       br $for-loop|1
      end
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $for-loop|0
    end
   end
   local.get $0
   local.get $1
   i32.const 1572
   i32.add
   i32.const 15
   i32.add
   i32.const 15
   i32.const -1
   i32.xor
   i32.and
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   drop
   local.get $0
   global.set $~lib/rt/tlsf/ROOT
  end
  local.get $0
 )
 (func $~lib/rt/tlsf/prepareSize (; 5 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741808
  i32.ge_u
  if
   i32.const 80
   i32.const 32
   i32.const 457
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.tee $1
  i32.const 16
  local.tee $2
  local.get $1
  local.get $2
  i32.gt_u
  select
 )
 (func $~lib/rt/tlsf/searchBlock (; 6 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $2
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $3
  else
   local.get $1
   i32.const 536870904
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    i32.add
    i32.const 1
    i32.sub
   else
    local.get $1
   end
   local.set $4
   i32.const 31
   local.get $4
   i32.clz
   i32.sub
   local.set $2
   local.get $4
   local.get $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $3
   local.get $2
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $2
  end
  local.get $2
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 338
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $5
  local.get $2
  local.set $4
  local.get $5
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 0
  i32.const -1
  i32.xor
  local.get $3
  i32.shl
  i32.and
  local.set $6
  i32.const 0
  local.set $7
  local.get $6
  i32.eqz
  if
   local.get $0
   i32.load
   i32.const 0
   i32.const -1
   i32.xor
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.set $5
   local.get $5
   i32.eqz
   if
    i32.const 0
    local.set $7
   else
    local.get $5
    i32.ctz
    local.set $2
    local.get $0
    local.set $8
    local.get $2
    local.set $4
    local.get $8
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.set $6
    local.get $6
    i32.eqz
    if
     i32.const 0
     i32.const 32
     i32.const 351
     i32.const 17
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.set $9
    local.get $2
    local.set $8
    local.get $6
    i32.ctz
    local.set $4
    local.get $9
    local.get $8
    i32.const 4
    i32.shl
    local.get $4
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
    local.set $7
   end
  else
   local.get $0
   local.set $9
   local.get $2
   local.set $8
   local.get $6
   i32.ctz
   local.set $4
   local.get $9
   local.get $8
   i32.const 4
   i32.shl
   local.get $4
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
   local.set $7
  end
  local.get $7
 )
 (func $~lib/rt/tlsf/growMemory (; 7 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  i32.const 536870904
  i32.lt_u
  if
   local.get $1
   i32.const 1
   i32.const 27
   local.get $1
   i32.clz
   i32.sub
   i32.shl
   i32.const 1
   i32.sub
   i32.add
   local.set $1
  end
  memory.size
  local.set $2
  local.get $1
  i32.const 16
  local.get $2
  i32.const 16
  i32.shl
  i32.const 16
  i32.sub
  local.get $0
  local.set $3
  local.get $3
  i32.load offset=1568
  i32.ne
  i32.shl
  i32.add
  local.set $1
  local.get $1
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $4
  local.get $2
  local.tee $3
  local.get $4
  local.tee $5
  local.get $3
  local.get $5
  i32.gt_s
  select
  local.set $6
  local.get $6
  memory.grow
  i32.const 0
  i32.lt_s
  if
   local.get $4
   memory.grow
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
  end
  memory.size
  local.set $7
  local.get $0
  local.get $2
  i32.const 16
  i32.shl
  local.get $7
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
 )
 (func $~lib/rt/tlsf/prepareBlock (; 8 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.set $3
  local.get $2
  i32.const 15
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 365
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $2
  i32.sub
  local.set $4
  local.get $4
  i32.const 32
  i32.ge_u
  if
   local.get $1
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $1
   i32.const 16
   i32.add
   local.get $2
   i32.add
   local.set $5
   local.get $5
   local.get $4
   i32.const 16
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $5
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $3
   i32.const 1
   i32.const -1
   i32.xor
   i32.and
   i32.store
   local.get $1
   local.set $5
   local.get $5
   i32.const 16
   i32.add
   local.get $5
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.get $1
   local.set $5
   local.get $5
   i32.const 16
   i32.add
   local.get $5
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   i32.load
   i32.const 2
   i32.const -1
   i32.xor
   i32.and
   i32.store
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (; 9 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/rt/tlsf/collectLock
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 490
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.set $3
  local.get $0
  local.get $3
  call $~lib/rt/tlsf/searchBlock
  local.set $4
  local.get $4
  i32.eqz
  if
   global.get $~lib/gc/gc.auto
   if
    i32.const 1
    global.set $~lib/rt/tlsf/collectLock
    call $~lib/rt/pure/__collect
    i32.const 0
    global.set $~lib/rt/tlsf/collectLock
    local.get $0
    local.get $3
    call $~lib/rt/tlsf/searchBlock
    local.set $4
    local.get $4
    i32.eqz
    if
     local.get $0
     local.get $3
     call $~lib/rt/tlsf/growMemory
     local.get $0
     local.get $3
     call $~lib/rt/tlsf/searchBlock
     local.set $4
     local.get $4
     i32.eqz
     if
      i32.const 0
      i32.const 32
      i32.const 502
      i32.const 19
      call $~lib/builtins/abort
      unreachable
     end
    end
   else
    local.get $0
    local.get $3
    call $~lib/rt/tlsf/growMemory
    local.get $0
    local.get $3
    call $~lib/rt/tlsf/searchBlock
    local.set $4
    local.get $4
    i32.eqz
    if
     i32.const 0
     i32.const 32
     i32.const 507
     i32.const 17
     call $~lib/builtins/abort
     unreachable
    end
   end
  end
  local.get $4
  i32.load
  i32.const -4
  i32.and
  local.get $3
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 510
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 0
  i32.store offset=4
  local.get $4
  local.get $2
  i32.store offset=8
  local.get $4
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $4
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $4
  local.get $3
  call $~lib/rt/tlsf/prepareBlock
  local.get $4
 )
 (func $~lib/rt/tlsf/__alloc (; 10 ;) (param $0 i32) (param $1 i32) (result i32)
  call $~lib/rt/tlsf/maybeInitialize
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
 )
 (func $~lib/rt/pure/increment (; 11 ;) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const -268435456
  i32.and
  local.get $1
  i32.const 1
  i32.add
  i32.const -268435456
  i32.and
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 109
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  i32.store offset=4
  local.get $0
  i32.load
  i32.const 1
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 112
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/rt/pure/__retain (; 12 ;) (param $0 i32) (result i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/increment
  end
  local.get $0
 )
 (func $~lib/rt/pure/__release (; 13 ;) (param $0 i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $~lib/memory/memory.fill (; 14 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  block $~lib/util/memory/memset|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $3
   i32.eqz
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 1
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 2
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 1
   i32.add
   local.get $4
   i32.store8
   local.get $5
   i32.const 2
   i32.add
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 2
   i32.sub
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 3
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 6
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 3
   i32.add
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   i32.const 0
   local.get $5
   i32.sub
   i32.const 3
   i32.and
   local.set $6
   local.get $5
   local.get $6
   i32.add
   local.set $5
   local.get $3
   local.get $6
   i32.sub
   local.set $3
   local.get $3
   i32.const -4
   i32.and
   local.set $3
   i32.const -1
   i32.const 255
   i32.div_u
   local.get $4
   i32.const 255
   i32.and
   i32.mul
   local.set $7
   local.get $5
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.get $7
   i32.store
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 4
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 8
   i32.add
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 12
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 8
   i32.sub
   local.get $7
   i32.store
   local.get $3
   i32.const 24
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 12
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 16
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 20
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 24
   i32.add
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 28
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 24
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 20
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 16
   i32.sub
   local.get $7
   i32.store
   i32.const 24
   local.get $5
   i32.const 4
   i32.and
   i32.add
   local.set $6
   local.get $5
   local.get $6
   i32.add
   local.set $5
   local.get $3
   local.get $6
   i32.sub
   local.set $3
   local.get $7
   i64.extend_i32_u
   local.get $7
   i64.extend_i32_u
   i64.const 32
   i64.shl
   i64.or
   local.set $8
   loop $while-continue|0
    local.get $3
    i32.const 32
    i32.ge_u
    local.set $9
    local.get $9
    if
     local.get $5
     local.get $8
     i64.store
     local.get $5
     i32.const 8
     i32.add
     local.get $8
     i64.store
     local.get $5
     i32.const 16
     i32.add
     local.get $8
     i64.store
     local.get $5
     i32.const 24
     i32.add
     local.get $8
     i64.store
     local.get $3
     i32.const 32
     i32.sub
     local.set $3
     local.get $5
     i32.const 32
     i32.add
     local.set $5
     br $while-continue|0
    end
   end
  end
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 15 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 1073741808
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   i32.const 192
   i32.const 240
   i32.const 23
   i32.const 56
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  i32.shl
  local.tee $1
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $3
  local.get $3
  i32.const 0
  local.get $1
  call $~lib/memory/memory.fill
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 2
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  i32.load
  local.tee $6
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Uint64Array#constructor (; 16 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 12
   i32.const 5
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 3
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
 )
 (func $start:assembly/index (; 17 ;)
  i32.const 0
  i32.const 256
  call $~lib/typedarray/Uint64Array#constructor
  global.set $assembly/index/modTable
  i32.const 0
  i32.const 256
  call $~lib/typedarray/Uint64Array#constructor
  global.set $assembly/index/outTable
 )
 (func $assembly/index/degree (; 18 ;) (param $0 i64) (result i32)
  i32.const 63
  local.get $0
  i64.clz
  i32.wrap_i64
  i32.sub
 )
 (func $assembly/index/mod (; 19 ;) (param $0 i64) (param $1 i64) (result i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  local.set $3
  i32.const 63
  local.get $3
  i64.clz
  i32.wrap_i64
  i32.sub
  local.set $4
  loop $while-continue|0
   local.get $0
   local.set $3
   i32.const 63
   local.get $3
   i64.clz
   i32.wrap_i64
   i32.sub
   local.get $4
   i32.sub
   local.tee $2
   i32.const 0
   i32.ge_s
   local.set $5
   local.get $5
   if
    local.get $0
    local.get $1
    local.get $2
    i64.extend_i32_s
    i64.shl
    i64.xor
    local.set $0
    br $while-continue|0
   end
  end
  local.get $0
 )
 (func $~lib/typedarray/Uint8Array#constructor (; 20 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 12
   i32.const 4
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/typedarray/Uint64Array#__uset (; 21 ;) (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  local.get $2
  i64.store
 )
 (func $~lib/typedarray/Uint8Array#__set (; 22 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 304
   i32.const 368
   i32.const 163
   i32.const 44
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/typedarray/Uint8Array#__get (; 23 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 304
   i32.const 368
   i32.const 152
   i32.const 44
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_u
 )
 (func $~lib/typedarray/Uint8Array#__uset (; 24 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/typedarray/Uint64Array#__uget (; 25 ;) (param $0 i32) (param $1 i32) (result i64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $assembly/index/Rabin#constructor (; 26 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i64)
  (local $11 i32)
  (local $12 i64)
  (local $13 i64)
  (local $14 i64)
  (local $15 i32)
  (local $16 i64)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  local.get $0
  i32.eqz
  if
   i32.const 104
   i32.const 6
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i64.const 0
  i64.store offset=16
  local.get $0
  i64.const 0
  i64.store offset=24
  local.get $0
  i64.const 0
  i64.store offset=32
  local.get $0
  i64.const 0
  i64.store offset=40
  local.get $0
  i64.const 0
  i64.store offset=48
  local.get $0
  i64.const 0
  i64.store offset=56
  local.get $0
  i64.const 0
  i64.store offset=64
  local.get $0
  i64.const 0
  i64.store offset=72
  local.get $0
  i64.const 0
  i64.store offset=80
  local.get $0
  i64.const 0
  i64.store offset=88
  local.get $0
  i64.const 0
  i64.store offset=96
  local.get $0
  local.get $2
  i64.extend_i32_u
  i64.store offset=80
  local.get $0
  local.get $3
  i64.extend_i32_u
  i64.store offset=88
  local.get $0
  local.tee $5
  i32.const 0
  local.get $4
  call $~lib/typedarray/Uint8Array#constructor
  local.set $6
  local.get $5
  i32.load
  call $~lib/rt/pure/__release
  local.get $6
  i32.store
  local.get $0
  local.get $4
  i32.store offset=4
  local.get $0
  i64.const 1
  local.get $1
  i64.extend_i32_u
  i64.shl
  i64.const 1
  i64.sub
  i64.store offset=96
  local.get $0
  i64.const 17349423945073011
  i64.store offset=72
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $6
  global.get $assembly/index/tables_initialized
  i32.eqz
  if
   local.get $6
   call $~lib/rt/pure/__retain
   local.set $5
   i32.const 0
   local.set $7
   loop $for-loop|0
    local.get $7
    i32.const 256
    i32.lt_s
    local.set $8
    local.get $8
    if
     i64.const 0
     local.set $9
     local.get $9
     local.set $12
     local.get $7
     local.set $11
     local.get $5
     i64.load offset=72
     local.set $10
     local.get $12
     i64.const 8
     i64.shl
     local.set $12
     local.get $12
     local.get $11
     i32.const 255
     i32.and
     i64.extend_i32_u
     i64.or
     local.set $12
     local.get $12
     local.set $14
     local.get $10
     local.set $13
     local.get $13
     local.set $16
     i32.const 63
     local.get $16
     i64.clz
     i32.wrap_i64
     i32.sub
     local.set $17
     loop $while-continue|1
      local.get $14
      local.set $16
      i32.const 63
      local.get $16
      i64.clz
      i32.wrap_i64
      i32.sub
      local.get $17
      i32.sub
      local.tee $15
      i32.const 0
      i32.ge_s
      local.set $18
      local.get $18
      if
       local.get $14
       local.get $13
       local.get $15
       i64.extend_i32_s
       i64.shl
       i64.xor
       local.set $14
       br $while-continue|1
      end
     end
     local.get $14
     local.set $9
     i32.const 0
     local.set $11
     loop $for-loop|2
      local.get $11
      local.get $5
      i32.load offset=4
      i32.const 1
      i32.sub
      i32.lt_s
      local.set $17
      local.get $17
      if
       local.get $9
       local.set $13
       i32.const 0
       local.set $18
       local.get $5
       i64.load offset=72
       local.set $16
       local.get $13
       i64.const 8
       i64.shl
       local.set $13
       local.get $13
       local.get $18
       i64.extend_i32_u
       i64.or
       local.set $13
       local.get $13
       local.set $10
       local.get $16
       local.set $14
       local.get $14
       local.set $12
       i32.const 63
       local.get $12
       i64.clz
       i32.wrap_i64
       i32.sub
       local.set $19
       loop $while-continue|3
        local.get $10
        local.set $12
        i32.const 63
        local.get $12
        i64.clz
        i32.wrap_i64
        i32.sub
        local.get $19
        i32.sub
        local.tee $15
        i32.const 0
        i32.ge_s
        local.set $20
        local.get $20
        if
         local.get $10
         local.get $14
         local.get $15
         i64.extend_i32_s
         i64.shl
         i64.xor
         local.set $10
         br $while-continue|3
        end
       end
       local.get $10
       local.set $9
       local.get $11
       i32.const 1
       i32.add
       local.set $11
       br $for-loop|2
      end
     end
     global.get $assembly/index/outTable
     local.get $7
     local.get $9
     call $~lib/typedarray/Uint64Array#__uset
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $for-loop|0
    end
   end
   local.get $5
   i64.load offset=72
   local.set $12
   i32.const 63
   local.get $12
   i64.clz
   i32.wrap_i64
   i32.sub
   i64.extend_i32_s
   local.set $12
   i32.const 0
   local.set $7
   loop $for-loop|4
    local.get $7
    i32.const 256
    i32.lt_s
    local.set $8
    local.get $8
    if
     local.get $7
     i64.extend_i32_s
     local.get $12
     i64.shl
     local.set $9
     global.get $assembly/index/modTable
     local.get $7
     local.get $9
     local.set $10
     local.get $5
     i64.load offset=72
     local.set $14
     local.get $14
     local.set $16
     i32.const 63
     local.get $16
     i64.clz
     i32.wrap_i64
     i32.sub
     local.set $17
     loop $while-continue|5
      local.get $10
      local.set $13
      i32.const 63
      local.get $13
      i64.clz
      i32.wrap_i64
      i32.sub
      local.get $17
      i32.sub
      local.tee $11
      i32.const 0
      i32.ge_s
      local.set $18
      local.get $18
      if
       local.get $10
       local.get $14
       local.get $11
       i64.extend_i32_s
       i64.shl
       i64.xor
       local.set $10
       br $while-continue|5
      end
     end
     local.get $10
     local.get $9
     i64.or
     call $~lib/typedarray/Uint64Array#__uset
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $for-loop|4
    end
   end
   local.get $5
   call $~lib/rt/pure/__release
   i32.const 1
   global.set $assembly/index/tables_initialized
  end
  local.get $6
  i64.const 0
  i64.store offset=24
  local.get $6
  i64.const 0
  i64.store offset=32
  local.get $6
  call $~lib/rt/pure/__retain
  local.set $20
  i32.const 0
  local.set $5
  loop $for-loop|6
   local.get $5
   local.get $20
   i32.load offset=4
   i32.lt_s
   local.set $7
   local.get $7
   if
    local.get $20
    i32.load
    local.get $5
    i32.const 0
    call $~lib/typedarray/Uint8Array#__set
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|6
   end
  end
  local.get $20
  i64.const 0
  i64.store offset=40
  local.get $20
  i32.const 0
  i32.store offset=8
  local.get $20
  i64.const 0
  i64.store offset=16
  local.get $20
  i64.const 0
  i64.store offset=40
  local.get $20
  call $~lib/rt/pure/__retain
  local.set $19
  i32.const 1
  local.set $15
  local.get $19
  i32.load
  local.get $19
  i32.load offset=8
  call $~lib/typedarray/Uint8Array#__get
  local.set $5
  local.get $19
  i32.load
  local.get $19
  i32.load offset=8
  local.get $15
  call $~lib/typedarray/Uint8Array#__uset
  local.get $19
  local.get $19
  i64.load offset=40
  global.get $assembly/index/outTable
  local.get $5
  call $~lib/typedarray/Uint64Array#__uget
  i64.xor
  i64.store offset=40
  local.get $19
  local.get $19
  i32.load offset=8
  i32.const 1
  i32.add
  local.get $19
  i32.load offset=4
  i32.rem_s
  i32.store offset=8
  local.get $19
  call $~lib/rt/pure/__retain
  local.set $11
  local.get $15
  local.set $18
  local.get $11
  i64.load offset=40
  local.set $12
  local.get $12
  global.get $assembly/index/POLYNOMIAL_SHIFT
  i64.extend_i32_s
  i64.shr_u
  i32.wrap_i64
  local.set $7
  local.get $11
  local.get $12
  i64.const 8
  i64.shl
  local.get $18
  i64.extend_i32_u
  i64.or
  global.get $assembly/index/modTable
  local.get $7
  call $~lib/typedarray/Uint64Array#__uget
  i64.xor
  i64.store offset=40
  local.get $11
  call $~lib/rt/pure/__release
  local.get $19
  call $~lib/rt/pure/__release
  local.get $20
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $assembly/index/Rabin#get:window (; 27 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $assembly/index/Rabin#set:window (; 28 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store
 )
 (func $assembly/index/Rabin#get:window_size (; 29 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
 )
 (func $assembly/index/Rabin#set:window_size (; 30 ;) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $assembly/index/Rabin#get:wpos (; 31 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
 )
 (func $assembly/index/Rabin#set:wpos (; 32 ;) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $assembly/index/Rabin#get:count (; 33 ;) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=16
 )
 (func $assembly/index/Rabin#set:count (; 34 ;) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=16
 )
 (func $assembly/index/Rabin#get:pos (; 35 ;) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=24
 )
 (func $assembly/index/Rabin#set:pos (; 36 ;) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=24
 )
 (func $assembly/index/Rabin#get:start (; 37 ;) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=32
 )
 (func $assembly/index/Rabin#set:start (; 38 ;) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=32
 )
 (func $assembly/index/Rabin#get:digest (; 39 ;) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=40
 )
 (func $assembly/index/Rabin#set:digest (; 40 ;) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=40
 )
 (func $assembly/index/Rabin#get:chunk_start (; 41 ;) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=48
 )
 (func $assembly/index/Rabin#set:chunk_start (; 42 ;) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=48
 )
 (func $assembly/index/Rabin#get:chunk_length (; 43 ;) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=56
 )
 (func $assembly/index/Rabin#set:chunk_length (; 44 ;) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=56
 )
 (func $assembly/index/Rabin#get:chunk_cut_fingerprint (; 45 ;) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=64
 )
 (func $assembly/index/Rabin#set:chunk_cut_fingerprint (; 46 ;) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=64
 )
 (func $assembly/index/Rabin#get:polynomial (; 47 ;) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=72
 )
 (func $assembly/index/Rabin#set:polynomial (; 48 ;) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=72
 )
 (func $assembly/index/Rabin#get:minsize (; 49 ;) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=80
 )
 (func $assembly/index/Rabin#set:minsize (; 50 ;) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=80
 )
 (func $assembly/index/Rabin#get:maxsize (; 51 ;) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=88
 )
 (func $assembly/index/Rabin#set:maxsize (; 52 ;) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=88
 )
 (func $assembly/index/Rabin#get:mask (; 53 ;) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=96
 )
 (func $assembly/index/Rabin#set:mask (; 54 ;) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=96
 )
 (func $~lib/typedarray/Uint8Array#get:length (; 55 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
 )
 (func $~lib/typedarray/Int32Array#__uset (; 56 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $assembly/index/Rabin#fingerprint (; 57 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i64)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  local.set $3
  local.get $1
  call $~lib/typedarray/Uint8Array#get:length
  local.set $4
  local.get $1
  i32.load offset=4
  local.set $5
  block $while-break|0
   loop $while-continue|0
    i32.const 1
    local.set $6
    local.get $6
    if
     block $assembly/index/rabin_next_chunk|inlined.0 (result i32)
      local.get $0
      call $~lib/rt/pure/__retain
      local.set $9
      local.get $5
      local.set $8
      local.get $4
      local.set $7
      i32.const 0
      local.set $10
      loop $for-loop|1
       local.get $10
       local.get $7
       i32.lt_s
       local.set $11
       local.get $11
       if
        local.get $8
        local.get $10
        i32.add
        i32.load8_u
        local.set $12
        local.get $9
        call $~lib/rt/pure/__retain
        local.set $14
        local.get $12
        local.set $13
        local.get $14
        i32.load
        local.get $14
        i32.load offset=8
        call $~lib/typedarray/Uint8Array#__get
        local.set $15
        local.get $14
        i32.load
        local.get $14
        i32.load offset=8
        local.get $13
        call $~lib/typedarray/Uint8Array#__uset
        local.get $14
        local.get $14
        i64.load offset=40
        global.get $assembly/index/outTable
        local.get $15
        call $~lib/typedarray/Uint64Array#__uget
        i64.xor
        i64.store offset=40
        local.get $14
        local.get $14
        i32.load offset=8
        i32.const 1
        i32.add
        local.get $14
        i32.load offset=4
        i32.rem_s
        i32.store offset=8
        local.get $14
        call $~lib/rt/pure/__retain
        local.set $17
        local.get $13
        local.set $16
        local.get $17
        i64.load offset=40
        local.set $18
        local.get $18
        global.get $assembly/index/POLYNOMIAL_SHIFT
        i64.extend_i32_s
        i64.shr_u
        i32.wrap_i64
        local.set $19
        local.get $17
        local.get $18
        i64.const 8
        i64.shl
        local.get $16
        i64.extend_i32_u
        i64.or
        global.get $assembly/index/modTable
        local.get $19
        call $~lib/typedarray/Uint64Array#__uget
        i64.xor
        i64.store offset=40
        local.get $17
        call $~lib/rt/pure/__release
        local.get $14
        call $~lib/rt/pure/__release
        local.get $9
        local.get $9
        i64.load offset=16
        i64.const 1
        i64.add
        i64.store offset=16
        local.get $9
        local.get $9
        i64.load offset=24
        i64.const 1
        i64.add
        i64.store offset=24
        local.get $9
        i64.load offset=16
        local.get $9
        i64.load offset=80
        i64.ge_u
        if (result i32)
         local.get $9
         i64.load offset=40
         local.get $9
         i64.load offset=96
         i64.and
         i64.const 0
         i64.eq
        else
         i32.const 0
        end
        if (result i32)
         i32.const 1
        else
         local.get $9
         i64.load offset=16
         local.get $9
         i64.load offset=88
         i64.ge_u
        end
        if
         local.get $9
         local.get $9
         i64.load offset=32
         i64.store offset=48
         local.get $9
         local.get $9
         i64.load offset=16
         i64.store offset=56
         local.get $9
         local.get $9
         i64.load offset=40
         i64.store offset=64
         local.get $9
         call $~lib/rt/pure/__retain
         local.set $16
         i32.const 0
         local.set $15
         loop $for-loop|2
          local.get $15
          local.get $16
          i32.load offset=4
          i32.lt_s
          local.set $14
          local.get $14
          if
           local.get $16
           i32.load
           local.get $15
           i32.const 0
           call $~lib/typedarray/Uint8Array#__set
           local.get $15
           i32.const 1
           i32.add
           local.set $15
           br $for-loop|2
          end
         end
         local.get $16
         i64.const 0
         i64.store offset=40
         local.get $16
         i32.const 0
         i32.store offset=8
         local.get $16
         i64.const 0
         i64.store offset=16
         local.get $16
         i64.const 0
         i64.store offset=40
         local.get $16
         call $~lib/rt/pure/__retain
         local.set $19
         i32.const 1
         local.set $17
         local.get $19
         i32.load
         local.get $19
         i32.load offset=8
         call $~lib/typedarray/Uint8Array#__get
         local.set $15
         local.get $19
         i32.load
         local.get $19
         i32.load offset=8
         local.get $17
         call $~lib/typedarray/Uint8Array#__uset
         local.get $19
         local.get $19
         i64.load offset=40
         global.get $assembly/index/outTable
         local.get $15
         call $~lib/typedarray/Uint64Array#__uget
         i64.xor
         i64.store offset=40
         local.get $19
         local.get $19
         i32.load offset=8
         i32.const 1
         i32.add
         local.get $19
         i32.load offset=4
         i32.rem_s
         i32.store offset=8
         local.get $19
         call $~lib/rt/pure/__retain
         local.set $14
         local.get $17
         local.set $13
         local.get $14
         i64.load offset=40
         local.set $18
         local.get $18
         global.get $assembly/index/POLYNOMIAL_SHIFT
         i64.extend_i32_s
         i64.shr_u
         i32.wrap_i64
         local.set $20
         local.get $14
         local.get $18
         i64.const 8
         i64.shl
         local.get $13
         i64.extend_i32_u
         i64.or
         global.get $assembly/index/modTable
         local.get $20
         call $~lib/typedarray/Uint64Array#__uget
         i64.xor
         i64.store offset=40
         local.get $14
         call $~lib/rt/pure/__release
         local.get $19
         call $~lib/rt/pure/__release
         local.get $16
         call $~lib/rt/pure/__release
         local.get $10
         i32.const 1
         i32.add
         local.set $16
         local.get $9
         call $~lib/rt/pure/__release
         local.get $16
         br $assembly/index/rabin_next_chunk|inlined.0
        end
        local.get $10
        i32.const 1
        i32.add
        local.set $10
        br $for-loop|1
       end
      end
      i32.const -1
      local.set $10
      local.get $9
      call $~lib/rt/pure/__release
      local.get $10
     end
     local.set $21
     local.get $21
     i32.const 0
     i32.lt_s
     if
      br $while-break|0
     end
     local.get $4
     local.get $21
     i32.sub
     local.set $4
     local.get $5
     local.get $21
     i32.add
     local.set $5
     local.get $3
     local.tee $9
     i32.const 1
     i32.add
     local.set $3
     local.get $9
     local.set $9
     local.get $2
     local.get $9
     local.get $0
     i64.load offset=56
     i32.wrap_i64
     call $~lib/typedarray/Int32Array#__uset
     br $while-continue|0
    end
   end
  end
  local.get $2
  local.set $6
  local.get $1
  call $~lib/rt/pure/__release
  local.get $6
 )
 (func $~start (; 58 ;)
  call $start:assembly/index
 )
 (func $~lib/rt/pure/__collect (; 59 ;)
  return
 )
 (func $~lib/rt/tlsf/freeBlock (; 60 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  i32.load
  local.set $2
  local.get $1
  local.get $2
  i32.const 1
  i32.or
  i32.store
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/pure/decrement (; 61 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 268435455
  i32.and
  local.set $2
  local.get $0
  i32.load
  i32.const 1
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 122
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  i32.eq
  if
   local.get $0
   i32.const 16
   i32.add
   i32.const 1
   call $~lib/rt/__visit_members
   local.get $1
   i32.const -2147483648
   i32.and
   i32.eqz
   i32.eqz
   if
    i32.const 0
    i32.const 144
    i32.const 126
    i32.const 17
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/rt/tlsf/ROOT
   local.get $0
   call $~lib/rt/tlsf/freeBlock
  else
   local.get $2
   i32.const 0
   i32.gt_u
   i32.eqz
   if
    i32.const 0
    i32.const 144
    i32.const 136
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 268435455
   i32.const -1
   i32.xor
   i32.and
   local.get $2
   i32.const 1
   i32.sub
   i32.or
   i32.store offset=4
  end
 )
 (func $~lib/rt/pure/__visit (; 62 ;) (param $0 i32) (param $1 i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.lt_u
  if
   return
  end
  local.get $1
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 69
   i32.const 15
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.sub
  call $~lib/rt/pure/decrement
 )
 (func $~lib/rt/__visit_members (; 63 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $switch$1$default
   block $switch$1$case$4
    block $switch$1$case$2
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     br_table $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$default
    end
    return
   end
   local.get $0
   i32.load
   local.tee $2
   if
    local.get $2
    local.get $1
    call $~lib/rt/pure/__visit
   end
   return
  end
  unreachable
 )
)
