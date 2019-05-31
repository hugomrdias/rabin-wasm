(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$ij (func (param i64) (result i32)))
 (type $FUNCSIG$jjj (func (param i64 i64) (result i64)))
 (type $FUNCSIG$iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$viij (func (param i32 i32 i64)))
 (type $FUNCSIG$jii (func (param i32 i32) (result i64)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$ji (func (param i32) (result i64)))
 (type $FUNCSIG$vij (func (param i32 i64)))
 (type $FUNCSIG$i (func (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\1b\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 72) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $assembly/index/tables_initialized (mut i32) (i32.const 0))
 (global $assembly/index/modTable (mut i32) (i32.const 0))
 (global $assembly/index/outTable (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "degree" (func $assembly/index/degree))
 (export "mod" (func $assembly/index/mod))
 (export "rabin_t#get:window" (func $rabin_t#get:window))
 (export "rabin_t#set:window" (func $rabin_t#set:window))
 (export "rabin_t#get:wpos" (func $rabin_t#get:wpos))
 (export "rabin_t#set:wpos" (func $rabin_t#set:wpos))
 (export "rabin_t#get:count" (func $rabin_t#get:count))
 (export "rabin_t#set:count" (func $rabin_t#set:count))
 (export "rabin_t#get:pos" (func $rabin_t#get:pos))
 (export "rabin_t#set:pos" (func $rabin_t#set:pos))
 (export "rabin_t#get:start" (func $rabin_t#get:start))
 (export "rabin_t#set:start" (func $rabin_t#set:start))
 (export "rabin_t#get:digest" (func $rabin_t#get:digest))
 (export "rabin_t#set:digest" (func $rabin_t#set:digest))
 (export "rabin_t#get:chunk_start" (func $rabin_t#get:chunk_start))
 (export "rabin_t#set:chunk_start" (func $rabin_t#set:chunk_start))
 (export "rabin_t#get:chunk_length" (func $rabin_t#get:chunk_length))
 (export "rabin_t#set:chunk_length" (func $rabin_t#set:chunk_length))
 (export "rabin_t#get:chunk_cut_fingerprint" (func $rabin_t#get:chunk_cut_fingerprint))
 (export "rabin_t#set:chunk_cut_fingerprint" (func $rabin_t#set:chunk_cut_fingerprint))
 (export "rabin_t#get:polynomial" (func $rabin_t#get:polynomial))
 (export "rabin_t#set:polynomial" (func $rabin_t#set:polynomial))
 (export "rabin_t#get:polynomial_degree" (func $rabin_t#get:polynomial_degree))
 (export "rabin_t#set:polynomial_degree" (func $rabin_t#set:polynomial_degree))
 (export "rabin_t#get:polynomial_shift" (func $rabin_t#get:polynomial_shift))
 (export "rabin_t#set:polynomial_shift" (func $rabin_t#set:polynomial_shift))
 (export "rabin_t#get:average_bits" (func $rabin_t#get:average_bits))
 (export "rabin_t#set:average_bits" (func $rabin_t#set:average_bits))
 (export "rabin_t#get:minsize" (func $rabin_t#get:minsize))
 (export "rabin_t#set:minsize" (func $rabin_t#set:minsize))
 (export "rabin_t#get:maxsize" (func $rabin_t#get:maxsize))
 (export "rabin_t#set:maxsize" (func $rabin_t#set:maxsize))
 (export "rabin_t#get:mask" (func $rabin_t#get:mask))
 (export "rabin_t#set:mask" (func $rabin_t#set:mask))
 (export "rabin_t#constructor" (func $assembly/index/rabin_t#constructor))
 (export "rabin_t#fingerprint" (func $assembly/index/rabin_t#fingerprint))
 (export "memory.compare" (func $~lib/memory/memory.compare))
 (export "memory.allocate" (func $~lib/memory/memory.allocate))
 (export "memory.free" (func $~lib/memory/memory.free))
 (export "memory.reset" (func $~lib/memory/memory.reset))
 (start $start)
 (func $~lib/allocator/arena/__memory_allocate (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 1073741824
  i32.gt_u
  if
   unreachable
  end
  local.get $0
  i32.const 1
  local.tee $1
  local.get $0
  local.get $1
  i32.gt_u
  select
  global.get $~lib/allocator/arena/offset
  local.tee $0
  i32.add
  i32.const 7
  i32.add
  i32.const -8
  i32.and
  local.tee $1
  current_memory
  local.tee $2
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $2
   local.get $1
   local.get $0
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $3
   local.tee $4
   local.get $2
   local.get $4
   i32.gt_s
   select
   grow_memory
   i32.const 0
   i32.lt_s
   if
    local.get $3
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $1
  global.set $~lib/allocator/arena/offset
  local.get $0
 )
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 1073741816
  i32.gt_u
  if
   i32.const 0
   i32.const 72
   i32.const 26
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.const 32
  local.get $0
  i32.const 7
  i32.add
  i32.clz
  i32.sub
  i32.shl
  call $~lib/allocator/arena/__memory_allocate
  local.tee $1
  local.get $0
  i32.store
  local.get $1
 )
 (func $~lib/internal/memory/memset (; 3 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 0
  i32.store8
  local.get $0
  local.get $1
  i32.add
  i32.const 1
  i32.sub
  i32.const 0
  i32.store8
  local.get $1
  i32.const 2
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 1
  i32.add
  i32.const 0
  i32.store8
  local.get $0
  i32.const 2
  i32.add
  i32.const 0
  i32.store8
  local.get $0
  local.get $1
  i32.add
  i32.const 2
  i32.sub
  i32.const 0
  i32.store8
  local.get $0
  local.get $1
  i32.add
  i32.const 3
  i32.sub
  i32.const 0
  i32.store8
  local.get $1
  i32.const 6
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 3
  i32.add
  i32.const 0
  i32.store8
  local.get $0
  local.get $1
  i32.add
  i32.const 4
  i32.sub
  i32.const 0
  i32.store8
  local.get $1
  i32.const 8
  i32.le_u
  if
   return
  end
  i32.const 0
  local.get $0
  i32.sub
  i32.const 3
  i32.and
  local.tee $2
  local.get $0
  i32.add
  local.tee $0
  i32.const 0
  i32.store
  local.get $1
  local.get $2
  i32.sub
  i32.const -4
  i32.and
  local.tee $1
  local.get $0
  i32.add
  i32.const 4
  i32.sub
  i32.const 0
  i32.store
  local.get $1
  i32.const 8
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 4
  i32.add
  i32.const 0
  i32.store
  local.get $0
  i32.const 8
  i32.add
  i32.const 0
  i32.store
  local.get $0
  local.get $1
  i32.add
  i32.const 12
  i32.sub
  i32.const 0
  i32.store
  local.get $0
  local.get $1
  i32.add
  i32.const 8
  i32.sub
  i32.const 0
  i32.store
  local.get $1
  i32.const 24
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 12
  i32.add
  i32.const 0
  i32.store
  local.get $0
  i32.const 16
  i32.add
  i32.const 0
  i32.store
  local.get $0
  i32.const 20
  i32.add
  i32.const 0
  i32.store
  local.get $0
  i32.const 24
  i32.add
  i32.const 0
  i32.store
  local.get $0
  local.get $1
  i32.add
  i32.const 28
  i32.sub
  i32.const 0
  i32.store
  local.get $0
  local.get $1
  i32.add
  i32.const 24
  i32.sub
  i32.const 0
  i32.store
  local.get $0
  local.get $1
  i32.add
  i32.const 20
  i32.sub
  i32.const 0
  i32.store
  local.get $0
  local.get $1
  i32.add
  i32.const 16
  i32.sub
  i32.const 0
  i32.store
  local.get $0
  i32.const 4
  i32.and
  i32.const 24
  i32.add
  local.tee $2
  local.get $0
  i32.add
  local.set $0
  local.get $1
  local.get $2
  i32.sub
  local.set $1
  loop $continue|0
   local.get $1
   i32.const 32
   i32.ge_u
   if
    local.get $0
    i64.const 0
    i64.store
    local.get $0
    i32.const 8
    i32.add
    i64.const 0
    i64.store
    local.get $0
    i32.const 16
    i32.add
    i64.const 0
    i64.store
    local.get $0
    i32.const 24
    i32.add
    i64.const 0
    i64.store
    local.get $1
    i32.const 32
    i32.sub
    local.set $1
    local.get $0
    i32.const 32
    i32.add
    local.set $0
    br $continue|0
   end
  end
 )
 (func $~lib/memory/memory.allocate (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/allocator/arena/__memory_allocate
 )
 (func $~lib/internal/typedarray/TypedArray<u64>#constructor (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 2048
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.tee $1
  i32.const 8
  i32.add
  i32.const 2048
  call $~lib/internal/memory/memset
  local.get $0
  i32.eqz
  if
   i32.const 12
   call $~lib/allocator/arena/__memory_allocate
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
  local.get $1
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 2048
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Uint64Array#constructor (; 6 ;) (type $FUNCSIG$i) (result i32)
  i32.const 12
  call $~lib/allocator/arena/__memory_allocate
  call $~lib/internal/typedarray/TypedArray<u64>#constructor
 )
 (func $assembly/index/degree (; 7 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i64)
  i64.const -9223372036854775808
  local.set $2
  loop $repeat|0
   block $break|0
    local.get $1
    i32.const 64
    i32.ge_s
    br_if $break|0
    local.get $0
    local.get $2
    i64.and
    i64.const 0
    i64.gt_u
    if
     i32.const 63
     local.get $1
     i32.sub
     return
    else     
     local.get $2
     i64.const 1
     i64.shr_u
     local.set $2
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $repeat|0
    end
    unreachable
   end
  end
  i32.const -1
 )
 (func $assembly/index/mod (; 8 ;) (type $FUNCSIG$jjj) (param $0 i64) (param $1 i64) (result i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  loop $continue|4
   block $assembly/index/degree|inlined.2 (result i32)
    local.get $0
    local.set $4
    i64.const -9223372036854775808
    local.set $3
    i32.const 0
    local.set $2
    loop $repeat|2
     block $break|2
      local.get $2
      i32.const 64
      i32.ge_s
      br_if $break|2
      i32.const 63
      local.get $2
      i32.sub
      local.get $3
      local.get $4
      i64.and
      i64.const 0
      i64.gt_u
      br_if $assembly/index/degree|inlined.2
      drop
      local.get $3
      i64.const 1
      i64.shr_u
      local.set $3
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $repeat|2
     end
    end
    i32.const -1
   end
   block $assembly/index/degree|inlined.3 (result i32)
    local.get $1
    local.set $4
    i64.const -9223372036854775808
    local.set $3
    i32.const 0
    local.set $2
    loop $repeat|3
     block $break|3
      local.get $2
      i32.const 64
      i32.ge_s
      br_if $break|3
      i32.const 63
      local.get $2
      i32.sub
      local.get $3
      local.get $4
      i64.and
      i64.const 0
      i64.gt_u
      br_if $assembly/index/degree|inlined.3
      drop
      local.get $3
      i64.const 1
      i64.shr_u
      local.set $3
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $repeat|3
     end
    end
    i32.const -1
   end
   i32.ge_s
   if
    local.get $0
    local.get $1
    block $assembly/index/degree|inlined.4 (result i32)
     local.get $0
     local.set $4
     i64.const -9223372036854775808
     local.set $3
     i32.const 0
     local.set $2
     loop $repeat|5
      block $break|5
       local.get $2
       i32.const 64
       i32.ge_s
       br_if $break|5
       i32.const 63
       local.get $2
       i32.sub
       local.get $3
       local.get $4
       i64.and
       i64.const 0
       i64.gt_u
       br_if $assembly/index/degree|inlined.4
       drop
       local.get $3
       i64.const 1
       i64.shr_u
       local.set $3
       local.get $2
       i32.const 1
       i32.add
       local.set $2
       br $repeat|5
      end
     end
     i32.const -1
    end
    block $assembly/index/degree|inlined.5 (result i32)
     local.get $1
     local.set $4
     i64.const -9223372036854775808
     local.set $3
     i32.const 0
     local.set $2
     loop $repeat|6
      block $break|6
       local.get $2
       i32.const 64
       i32.ge_s
       br_if $break|6
       i32.const 63
       local.get $2
       i32.sub
       local.get $3
       local.get $4
       i64.and
       i64.const 0
       i64.gt_u
       br_if $assembly/index/degree|inlined.5
       drop
       local.get $3
       i64.const 1
       i64.shr_u
       local.set $3
       local.get $2
       i32.const 1
       i32.add
       local.set $2
       br $repeat|6
      end
     end
     i32.const -1
    end
    i32.sub
    i64.extend_i32_s
    i64.shl
    i64.xor
    local.set $0
    br $continue|4
   end
  end
  local.get $0
 )
 (func $~lib/internal/typedarray/TypedArray<u8>#constructor (; 9 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 64
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.tee $1
  i32.const 8
  i32.add
  i32.const 64
  call $~lib/internal/memory/memset
  local.get $0
  i32.eqz
  if
   i32.const 12
   call $~lib/allocator/arena/__memory_allocate
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
  local.get $1
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 64
  i32.store offset=8
  local.get $0
 )
 (func $~lib/internal/typedarray/TypedArray<u64>#__set (; 10 ;) (type $FUNCSIG$viij) (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 8
   i32.const 50
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i32.add
  local.get $2
  i64.store offset=8
 )
 (func $~lib/internal/typedarray/TypedArray<u8>#__set (; 11 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 0
   i32.const 8
   i32.const 50
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  local.get $0
  i32.load
  i32.add
  i32.add
  local.get $2
  i32.store8 offset=8
 )
 (func $~lib/internal/typedarray/TypedArray<u8>#__get (; 12 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 0
   i32.const 8
   i32.const 39
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  local.get $0
  i32.load
  i32.add
  i32.add
  i32.load8_u offset=8
 )
 (func $~lib/internal/typedarray/TypedArray<u64>#__get (; 13 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 8
   i32.const 39
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i32.add
  i64.load offset=8
 )
 (func $assembly/index/rabin_init (; 14 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  global.get $assembly/index/tables_initialized
  i32.eqz
  if
   local.get $0
   local.set $8
   loop $repeat|0
    local.get $4
    i32.const 256
    i32.lt_s
    if
     local.get $4
     i32.const 255
     i32.and
     i64.extend_i32_u
     local.set $3
     local.get $8
     i64.load offset=64
     local.set $5
     loop $continue|5
      block $assembly/index/degree|inlined.8 (result i32)
       local.get $3
       local.set $6
       i64.const -9223372036854775808
       local.set $2
       i32.const 0
       local.set $1
       loop $repeat|3
        local.get $1
        i32.const 64
        i32.lt_s
        if
         i32.const 63
         local.get $1
         i32.sub
         local.get $2
         local.get $6
         i64.and
         i64.const 0
         i64.gt_u
         br_if $assembly/index/degree|inlined.8
         drop
         local.get $2
         i64.const 1
         i64.shr_u
         local.set $2
         local.get $1
         i32.const 1
         i32.add
         local.set $1
         br $repeat|3
        end
       end
       i32.const -1
      end
      block $assembly/index/degree|inlined.9 (result i32)
       local.get $5
       local.set $6
       i64.const -9223372036854775808
       local.set $2
       i32.const 0
       local.set $1
       loop $repeat|4
        local.get $1
        i32.const 64
        i32.lt_s
        if
         i32.const 63
         local.get $1
         i32.sub
         local.get $2
         local.get $6
         i64.and
         i64.const 0
         i64.gt_u
         br_if $assembly/index/degree|inlined.9
         drop
         local.get $2
         i64.const 1
         i64.shr_u
         local.set $2
         local.get $1
         i32.const 1
         i32.add
         local.set $1
         br $repeat|4
        end
       end
       i32.const -1
      end
      i32.ge_s
      if
       local.get $3
       local.get $5
       block $assembly/index/degree|inlined.10 (result i32)
        local.get $3
        local.set $6
        i64.const -9223372036854775808
        local.set $2
        i32.const 0
        local.set $1
        loop $repeat|6
         local.get $1
         i32.const 64
         i32.lt_s
         if
          i32.const 63
          local.get $1
          i32.sub
          local.get $2
          local.get $6
          i64.and
          i64.const 0
          i64.gt_u
          br_if $assembly/index/degree|inlined.10
          drop
          local.get $2
          i64.const 1
          i64.shr_u
          local.set $2
          local.get $1
          i32.const 1
          i32.add
          local.set $1
          br $repeat|6
         end
        end
        i32.const -1
       end
       block $assembly/index/degree|inlined.11 (result i32)
        local.get $5
        local.set $6
        i64.const -9223372036854775808
        local.set $2
        i32.const 0
        local.set $1
        loop $repeat|7
         local.get $1
         i32.const 64
         i32.lt_s
         if
          i32.const 63
          local.get $1
          i32.sub
          local.get $2
          local.get $6
          i64.and
          i64.const 0
          i64.gt_u
          br_if $assembly/index/degree|inlined.11
          drop
          local.get $2
          i64.const 1
          i64.shr_u
          local.set $2
          local.get $1
          i32.const 1
          i32.add
          local.set $1
          br $repeat|7
         end
        end
        i32.const -1
       end
       i32.sub
       i64.extend_i32_s
       i64.shl
       i64.xor
       local.set $3
       br $continue|5
      end
     end
     local.get $3
     local.set $5
     i32.const 0
     local.set $1
     loop $repeat|8
      local.get $1
      i32.const 63
      i32.lt_s
      if
       local.get $5
       i64.const 8
       i64.shl
       local.set $3
       local.get $8
       i64.load offset=64
       local.set $5
       loop $continue|13
        block $assembly/index/degree|inlined.14 (result i32)
         local.get $3
         local.set $6
         i64.const -9223372036854775808
         local.set $2
         i32.const 0
         local.set $7
         loop $repeat|11
          local.get $7
          i32.const 64
          i32.lt_s
          if
           i32.const 63
           local.get $7
           i32.sub
           local.get $2
           local.get $6
           i64.and
           i64.const 0
           i64.gt_u
           br_if $assembly/index/degree|inlined.14
           drop
           local.get $2
           i64.const 1
           i64.shr_u
           local.set $2
           local.get $7
           i32.const 1
           i32.add
           local.set $7
           br $repeat|11
          end
         end
         i32.const -1
        end
        block $assembly/index/degree|inlined.15 (result i32)
         local.get $5
         local.set $6
         i64.const -9223372036854775808
         local.set $2
         i32.const 0
         local.set $7
         loop $repeat|12
          local.get $7
          i32.const 64
          i32.lt_s
          if
           i32.const 63
           local.get $7
           i32.sub
           local.get $2
           local.get $6
           i64.and
           i64.const 0
           i64.gt_u
           br_if $assembly/index/degree|inlined.15
           drop
           local.get $2
           i64.const 1
           i64.shr_u
           local.set $2
           local.get $7
           i32.const 1
           i32.add
           local.set $7
           br $repeat|12
          end
         end
         i32.const -1
        end
        i32.ge_s
        if
         local.get $3
         local.get $5
         block $assembly/index/degree|inlined.16 (result i32)
          local.get $3
          local.set $6
          i64.const -9223372036854775808
          local.set $2
          i32.const 0
          local.set $7
          loop $repeat|14
           local.get $7
           i32.const 64
           i32.lt_s
           if
            i32.const 63
            local.get $7
            i32.sub
            local.get $2
            local.get $6
            i64.and
            i64.const 0
            i64.gt_u
            br_if $assembly/index/degree|inlined.16
            drop
            local.get $2
            i64.const 1
            i64.shr_u
            local.set $2
            local.get $7
            i32.const 1
            i32.add
            local.set $7
            br $repeat|14
           end
          end
          i32.const -1
         end
         block $assembly/index/degree|inlined.17 (result i32)
          local.get $5
          local.set $6
          i64.const -9223372036854775808
          local.set $2
          i32.const 0
          local.set $7
          loop $repeat|15
           local.get $7
           i32.const 64
           i32.lt_s
           if
            i32.const 63
            local.get $7
            i32.sub
            local.get $2
            local.get $6
            i64.and
            i64.const 0
            i64.gt_u
            br_if $assembly/index/degree|inlined.17
            drop
            local.get $2
            i64.const 1
            i64.shr_u
            local.set $2
            local.get $7
            i32.const 1
            i32.add
            local.set $7
            br $repeat|15
           end
          end
          i32.const -1
         end
         i32.sub
         i64.extend_i32_s
         i64.shl
         i64.xor
         local.set $3
         br $continue|13
        end
       end
       local.get $3
       local.set $5
       local.get $1
       i32.const 1
       i32.add
       local.set $1
       br $repeat|8
      end
     end
     global.get $assembly/index/outTable
     local.get $4
     local.get $5
     call $~lib/internal/typedarray/TypedArray<u64>#__set
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $repeat|0
    end
   end
   block $assembly/index/degree|inlined.18 (result i32)
    local.get $8
    i64.load offset=64
    local.set $5
    i64.const -9223372036854775808
    local.set $3
    i32.const 0
    local.set $4
    loop $repeat|16
     local.get $4
     i32.const 64
     i32.lt_s
     if
      i32.const 63
      local.get $4
      i32.sub
      local.get $3
      local.get $5
      i64.and
      i64.const 0
      i64.gt_u
      br_if $assembly/index/degree|inlined.18
      drop
      local.get $3
      i64.const 1
      i64.shr_u
      local.set $3
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $repeat|16
     end
    end
    i32.const -1
   end
   i64.extend_i32_s
   local.set $9
   i32.const 0
   local.set $4
   loop $repeat|17
    local.get $4
    i32.const 256
    i32.lt_s
    if
     global.get $assembly/index/modTable
     local.get $4
     block (result i64)
      local.get $4
      i64.extend_i32_s
      local.get $9
      i64.shl
      local.set $5
      local.get $8
      i64.load offset=64
      local.set $6
      loop $continue|22
       block $assembly/index/degree|inlined.21 (result i32)
        local.get $5
        local.set $2
        i64.const -9223372036854775808
        local.set $3
        i32.const 0
        local.set $1
        loop $repeat|20
         local.get $1
         i32.const 64
         i32.lt_s
         if
          i32.const 63
          local.get $1
          i32.sub
          local.get $2
          local.get $3
          i64.and
          i64.const 0
          i64.gt_u
          br_if $assembly/index/degree|inlined.21
          drop
          local.get $3
          i64.const 1
          i64.shr_u
          local.set $3
          local.get $1
          i32.const 1
          i32.add
          local.set $1
          br $repeat|20
         end
        end
        i32.const -1
       end
       block $assembly/index/degree|inlined.22 (result i32)
        local.get $6
        local.set $2
        i64.const -9223372036854775808
        local.set $3
        i32.const 0
        local.set $1
        loop $repeat|21
         local.get $1
         i32.const 64
         i32.lt_s
         if
          i32.const 63
          local.get $1
          i32.sub
          local.get $2
          local.get $3
          i64.and
          i64.const 0
          i64.gt_u
          br_if $assembly/index/degree|inlined.22
          drop
          local.get $3
          i64.const 1
          i64.shr_u
          local.set $3
          local.get $1
          i32.const 1
          i32.add
          local.set $1
          br $repeat|21
         end
        end
        i32.const -1
       end
       i32.ge_s
       if
        local.get $5
        local.get $6
        block $assembly/index/degree|inlined.23 (result i32)
         local.get $5
         local.set $2
         i64.const -9223372036854775808
         local.set $3
         i32.const 0
         local.set $1
         loop $repeat|23
          local.get $1
          i32.const 64
          i32.lt_s
          if
           i32.const 63
           local.get $1
           i32.sub
           local.get $2
           local.get $3
           i64.and
           i64.const 0
           i64.gt_u
           br_if $assembly/index/degree|inlined.23
           drop
           local.get $3
           i64.const 1
           i64.shr_u
           local.set $3
           local.get $1
           i32.const 1
           i32.add
           local.set $1
           br $repeat|23
          end
         end
         i32.const -1
        end
        block $assembly/index/degree|inlined.24 (result i32)
         local.get $6
         local.set $2
         i64.const -9223372036854775808
         local.set $3
         i32.const 0
         local.set $1
         loop $repeat|24
          local.get $1
          i32.const 64
          i32.lt_s
          if
           i32.const 63
           local.get $1
           i32.sub
           local.get $2
           local.get $3
           i64.and
           i64.const 0
           i64.gt_u
           br_if $assembly/index/degree|inlined.24
           drop
           local.get $3
           i64.const 1
           i64.shr_u
           local.set $3
           local.get $1
           i32.const 1
           i32.add
           local.set $1
           br $repeat|24
          end
         end
         i32.const -1
        end
        i32.sub
        i64.extend_i32_s
        i64.shl
        i64.xor
        local.set $5
        br $continue|22
       end
      end
      local.get $4
      i64.extend_i32_s
      local.get $9
      i64.shl
      local.get $5
      i64.or
     end
     call $~lib/internal/typedarray/TypedArray<u64>#__set
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $repeat|17
    end
   end
   i32.const 1
   global.set $assembly/index/tables_initialized
  end
  local.get $0
  i64.const 0
  i64.store offset=16
  local.get $0
  i64.const 0
  i64.store offset=24
  i32.const 0
  local.set $4
  loop $repeat|25
   local.get $4
   i32.const 64
   i32.lt_s
   if
    local.get $0
    i32.load
    local.get $4
    i32.const 0
    call $~lib/internal/typedarray/TypedArray<u8>#__set
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $repeat|25
   end
  end
  local.get $0
  i64.const 0
  i64.store offset=32
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i64.const 0
  i64.store offset=8
  local.get $0
  i64.const 0
  i64.store offset=32
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  local.set $8
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  local.get $0
  local.get $0
  i64.load offset=32
  global.get $assembly/index/outTable
  local.get $8
  i32.const 255
  i32.and
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.xor
  i64.store offset=32
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.add
  i32.const 64
  i32.rem_s
  i32.store offset=4
  local.get $0
  i64.load offset=32
  local.get $0
  i64.load offset=80
  i64.shr_u
  i32.wrap_i64
  local.set $8
  local.get $0
  local.get $0
  i64.load offset=32
  i64.const 8
  i64.shl
  i64.store offset=32
  local.get $0
  local.get $0
  i64.load offset=32
  i64.const 1
  i64.or
  i64.store offset=32
  local.get $0
  local.get $0
  i64.load offset=32
  global.get $assembly/index/modTable
  local.get $8
  i32.const 255
  i32.and
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.xor
  i64.store offset=32
 )
 (func $assembly/index/rabin_t#constructor (; 15 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 120
   call $~lib/allocator/arena/__memory_allocate
   local.set $0
  end
  local.get $0
  i32.const 12
  call $~lib/allocator/arena/__memory_allocate
  call $~lib/internal/typedarray/TypedArray<u8>#constructor
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i64.const 0
  i64.store offset=8
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
  i64.const 0
  i64.store offset=104
  local.get $0
  i64.const 0
  i64.store offset=112
  local.get $0
  local.get $1
  i64.extend_i32_u
  i64.store offset=88
  local.get $0
  local.get $2
  i64.extend_i32_u
  i64.store offset=96
  local.get $0
  local.get $3
  i64.extend_i32_u
  i64.store offset=104
  local.get $0
  i64.const 1
  local.get $0
  i64.load offset=88
  i64.shl
  i64.const 1
  i64.sub
  i64.store offset=112
  local.get $0
  i64.const 17349423945073011
  i64.store offset=64
  local.get $0
  i64.const 53
  i64.store offset=72
  local.get $0
  local.get $0
  i64.load offset=72
  i64.const 8
  i64.sub
  i64.store offset=80
  local.get $0
  call $assembly/index/rabin_init
  local.get $0
 )
 (func $assembly/index/rabin_t#fingerprint (; 16 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $1
  i32.load offset=8
  local.set $6
  local.get $1
  i32.load
  i32.const 8
  i32.add
  local.set $7
  loop $continue|0
   block $assembly/index/rabin_next_chunk|inlined.0 (result i32)
    local.get $0
    local.set $1
    local.get $7
    local.set $3
    local.get $6
    local.set $9
    i32.const 0
    local.set $5
    loop $repeat|1
     local.get $5
     local.get $9
     i32.lt_s
     if
      local.get $3
      local.get $5
      i32.add
      i32.load8_u
      local.set $4
      local.get $1
      i32.load
      local.get $1
      i32.load offset=4
      call $~lib/internal/typedarray/TypedArray<u8>#__get
      local.set $8
      local.get $1
      i32.load
      local.get $1
      i32.load offset=4
      local.get $4
      call $~lib/internal/typedarray/TypedArray<u8>#__set
      local.get $1
      local.get $1
      i64.load offset=32
      global.get $assembly/index/outTable
      local.get $8
      i32.const 255
      i32.and
      call $~lib/internal/typedarray/TypedArray<u64>#__get
      i64.xor
      i64.store offset=32
      local.get $1
      local.get $1
      i32.load offset=4
      i32.const 1
      i32.add
      i32.const 64
      i32.rem_s
      i32.store offset=4
      local.get $1
      i64.load offset=32
      local.get $1
      i64.load offset=80
      i64.shr_u
      i32.wrap_i64
      local.set $8
      local.get $1
      local.get $1
      i64.load offset=32
      i64.const 8
      i64.shl
      i64.store offset=32
      local.get $1
      local.get $1
      i64.load offset=32
      local.get $4
      i64.extend_i32_u
      i64.or
      i64.store offset=32
      local.get $1
      local.get $1
      i64.load offset=32
      global.get $assembly/index/modTable
      local.get $8
      i32.const 255
      i32.and
      call $~lib/internal/typedarray/TypedArray<u64>#__get
      i64.xor
      i64.store offset=32
      local.get $1
      local.get $1
      i64.load offset=8
      i64.const 1
      i64.add
      i64.store offset=8
      local.get $1
      local.get $1
      i64.load offset=16
      i64.const 1
      i64.add
      i64.store offset=16
      block (result i32)
       local.get $1
       i64.load offset=8
       local.get $1
       i64.load offset=96
       i64.ge_u
       local.tee $4
       if
        local.get $1
        i64.load offset=32
        local.get $1
        i64.load offset=112
        i64.and
        i64.const 0
        i64.eq
        local.set $4
       end
       local.get $4
      end
      if (result i32)
       local.get $4
      else       
       local.get $1
       i64.load offset=8
       local.get $1
       i64.load offset=104
       i64.ge_u
      end
      if
       local.get $1
       local.get $1
       i64.load offset=24
       i64.store offset=40
       local.get $1
       local.get $1
       i64.load offset=8
       i64.store offset=48
       local.get $1
       local.get $1
       i64.load offset=32
       i64.store offset=56
       i32.const 0
       local.set $3
       loop $repeat|2
        local.get $3
        i32.const 64
        i32.lt_s
        if
         local.get $1
         i32.load
         local.get $3
         i32.const 0
         call $~lib/internal/typedarray/TypedArray<u8>#__set
         local.get $3
         i32.const 1
         i32.add
         local.set $3
         br $repeat|2
        end
       end
       local.get $1
       i64.const 0
       i64.store offset=32
       local.get $1
       i32.const 0
       i32.store offset=4
       local.get $1
       i64.const 0
       i64.store offset=8
       local.get $1
       i64.const 0
       i64.store offset=32
       local.get $1
       i32.load
       local.get $1
       i32.load offset=4
       call $~lib/internal/typedarray/TypedArray<u8>#__get
       local.set $3
       local.get $1
       i32.load
       local.get $1
       i32.load offset=4
       i32.const 1
       call $~lib/internal/typedarray/TypedArray<u8>#__set
       local.get $1
       local.get $1
       i64.load offset=32
       global.get $assembly/index/outTable
       local.get $3
       i32.const 255
       i32.and
       call $~lib/internal/typedarray/TypedArray<u64>#__get
       i64.xor
       i64.store offset=32
       local.get $1
       local.get $1
       i32.load offset=4
       i32.const 1
       i32.add
       i32.const 64
       i32.rem_s
       i32.store offset=4
       local.get $1
       i64.load offset=32
       local.get $1
       i64.load offset=80
       i64.shr_u
       i32.wrap_i64
       local.set $3
       local.get $1
       local.get $1
       i64.load offset=32
       i64.const 8
       i64.shl
       i64.store offset=32
       local.get $1
       local.get $1
       i64.load offset=32
       i64.const 1
       i64.or
       i64.store offset=32
       local.get $1
       local.get $1
       i64.load offset=32
       global.get $assembly/index/modTable
       local.get $3
       i32.const 255
       i32.and
       call $~lib/internal/typedarray/TypedArray<u64>#__get
       i64.xor
       i64.store offset=32
       local.get $5
       i32.const 1
       i32.add
       br $assembly/index/rabin_next_chunk|inlined.0
      else       
       local.get $5
       i32.const 1
       i32.add
       local.set $5
       br $repeat|1
      end
      unreachable
     end
    end
    i32.const -1
   end
   local.tee $1
   i32.const 0
   i32.ge_s
   if
    local.get $6
    local.get $1
    i32.sub
    local.set $6
    local.get $1
    local.get $7
    i32.add
    local.set $7
    local.get $10
    local.tee $1
    i32.const 1
    i32.add
    local.set $10
    local.get $2
    i32.load offset=4
    local.get $2
    i32.load
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    i32.add
    local.get $0
    i64.load offset=48
    i64.store32 offset=8
    local.get $2
    i32.load offset=4
    local.get $2
    i32.load
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    i32.add
    i32.load offset=8
    drop
    br $continue|0
   end
  end
 )
 (func $~lib/internal/memory/memcmp (; 17 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 0
   return
  end
  loop $continue|0
   local.get $2
   i32.const 0
   i32.ne
   local.tee $3
   if (result i32)
    local.get $0
    i32.load8_u
    local.get $1
    i32.load8_u
    i32.eq
   else    
    local.get $3
   end
   if
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $continue|0
   end
  end
  local.get $2
  if (result i32)
   local.get $0
   i32.load8_u
   local.get $1
   i32.load8_u
   i32.sub
  else   
   i32.const 0
  end
 )
 (func $~lib/memory/memory.compare (; 18 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $1
  local.get $2
  call $~lib/internal/memory/memcmp
 )
 (func $~lib/memory/memory.free (; 19 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/memory/memory.reset (; 20 ;) (type $FUNCSIG$v)
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
 )
 (func $start (; 21 ;) (type $FUNCSIG$v)
  i32.const 136
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  call $~lib/typedarray/Uint64Array#constructor
  global.set $assembly/index/modTable
  call $~lib/typedarray/Uint64Array#constructor
  global.set $assembly/index/outTable
 )
 (func $null (; 22 ;) (type $FUNCSIG$v)
  nop
 )
 (func $rabin_t#get:window (; 23 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $rabin_t#set:window (; 24 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $rabin_t#get:wpos (; 25 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
 )
 (func $rabin_t#set:wpos (; 26 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $rabin_t#get:count (; 27 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=8
 )
 (func $rabin_t#set:count (; 28 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=8
 )
 (func $rabin_t#get:pos (; 29 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=16
 )
 (func $rabin_t#set:pos (; 30 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=16
 )
 (func $rabin_t#get:start (; 31 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=24
 )
 (func $rabin_t#set:start (; 32 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=24
 )
 (func $rabin_t#get:digest (; 33 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=32
 )
 (func $rabin_t#set:digest (; 34 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=32
 )
 (func $rabin_t#get:chunk_start (; 35 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=40
 )
 (func $rabin_t#set:chunk_start (; 36 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=40
 )
 (func $rabin_t#get:chunk_length (; 37 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=48
 )
 (func $rabin_t#set:chunk_length (; 38 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=48
 )
 (func $rabin_t#get:chunk_cut_fingerprint (; 39 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=56
 )
 (func $rabin_t#set:chunk_cut_fingerprint (; 40 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=56
 )
 (func $rabin_t#get:polynomial (; 41 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=64
 )
 (func $rabin_t#set:polynomial (; 42 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=64
 )
 (func $rabin_t#get:polynomial_degree (; 43 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=72
 )
 (func $rabin_t#set:polynomial_degree (; 44 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=72
 )
 (func $rabin_t#get:polynomial_shift (; 45 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=80
 )
 (func $rabin_t#set:polynomial_shift (; 46 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=80
 )
 (func $rabin_t#get:average_bits (; 47 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=88
 )
 (func $rabin_t#set:average_bits (; 48 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=88
 )
 (func $rabin_t#get:minsize (; 49 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=96
 )
 (func $rabin_t#set:minsize (; 50 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=96
 )
 (func $rabin_t#get:maxsize (; 51 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=104
 )
 (func $rabin_t#set:maxsize (; 52 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=104
 )
 (func $rabin_t#get:mask (; 53 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=112
 )
 (func $rabin_t#set:mask (; 54 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=112
 )
)
