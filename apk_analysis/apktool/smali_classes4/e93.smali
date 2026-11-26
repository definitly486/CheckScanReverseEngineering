.class public final enum Le93;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le93$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le93;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Le93;

.field public static final enum BOOL:Le93;

.field public static final enum BOOL_LIST:Le93;

.field public static final enum BOOL_LIST_PACKED:Le93;

.field public static final enum BYTES:Le93;

.field public static final enum BYTES_LIST:Le93;

.field public static final enum DOUBLE:Le93;

.field public static final enum DOUBLE_LIST:Le93;

.field public static final enum DOUBLE_LIST_PACKED:Le93;

.field private static final EMPTY_TYPES:[Ljava/lang/reflect/Type;

.field public static final enum ENUM:Le93;

.field public static final enum ENUM_LIST:Le93;

.field public static final enum ENUM_LIST_PACKED:Le93;

.field public static final enum FIXED32:Le93;

.field public static final enum FIXED32_LIST:Le93;

.field public static final enum FIXED32_LIST_PACKED:Le93;

.field public static final enum FIXED64:Le93;

.field public static final enum FIXED64_LIST:Le93;

.field public static final enum FIXED64_LIST_PACKED:Le93;

.field public static final enum FLOAT:Le93;

.field public static final enum FLOAT_LIST:Le93;

.field public static final enum FLOAT_LIST_PACKED:Le93;

.field public static final enum GROUP:Le93;

.field public static final enum GROUP_LIST:Le93;

.field public static final enum INT32:Le93;

.field public static final enum INT32_LIST:Le93;

.field public static final enum INT32_LIST_PACKED:Le93;

.field public static final enum INT64:Le93;

.field public static final enum INT64_LIST:Le93;

.field public static final enum INT64_LIST_PACKED:Le93;

.field public static final enum MAP:Le93;

.field public static final enum MESSAGE:Le93;

.field public static final enum MESSAGE_LIST:Le93;

.field public static final enum SFIXED32:Le93;

.field public static final enum SFIXED32_LIST:Le93;

.field public static final enum SFIXED32_LIST_PACKED:Le93;

.field public static final enum SFIXED64:Le93;

.field public static final enum SFIXED64_LIST:Le93;

.field public static final enum SFIXED64_LIST_PACKED:Le93;

.field public static final enum SINT32:Le93;

.field public static final enum SINT32_LIST:Le93;

.field public static final enum SINT32_LIST_PACKED:Le93;

.field public static final enum SINT64:Le93;

.field public static final enum SINT64_LIST:Le93;

.field public static final enum SINT64_LIST_PACKED:Le93;

.field public static final enum STRING:Le93;

.field public static final enum STRING_LIST:Le93;

.field public static final enum UINT32:Le93;

.field public static final enum UINT32_LIST:Le93;

.field public static final enum UINT32_LIST_PACKED:Le93;

.field public static final enum UINT64:Le93;

.field public static final enum UINT64_LIST:Le93;

.field public static final enum UINT64_LIST_PACKED:Le93;

.field private static final VALUES:[Le93;


# instance fields
.field private final collection:Le93$b;

.field private final elementType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final id:I

.field private final javaType:Lgb4;

.field private final primitiveScalar:Z


# direct methods
.method static constructor <clinit>()V
    .locals 86

    new-instance v0, Le93;

    sget-object v5, Le93$b;->SCALAR:Le93$b;

    sget-object v11, Lgb4;->DOUBLE:Lgb4;

    const-string v1, "DOUBLE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v5

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    move-object v5, v4

    sput-object v0, Le93;->DOUBLE:Le93;

    new-instance v1, Le93;

    sget-object v17, Lgb4;->FLOAT:Lgb4;

    const-string v2, "FLOAT"

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    move-object/from16 v18, v1

    sput-object v18, Le93;->FLOAT:Le93;

    new-instance v1, Le93;

    sget-object v24, Lgb4;->LONG:Lgb4;

    const-string v2, "INT64"

    const/4 v3, 0x2

    const/4 v4, 0x2

    move-object/from16 v6, v24

    invoke-direct/range {v1 .. v6}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    move-object/from16 v25, v1

    sput-object v25, Le93;->INT64:Le93;

    new-instance v1, Le93;

    const/4 v3, 0x3

    const/4 v4, 0x3

    const-string v2, "UINT64"

    invoke-direct/range {v1 .. v6}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    move-object/from16 v26, v1

    sput-object v26, Le93;->UINT64:Le93;

    new-instance v1, Le93;

    sget-object v32, Lgb4;->INT:Lgb4;

    const-string v2, "INT32"

    const/4 v3, 0x4

    const/4 v4, 0x4

    move-object/from16 v6, v32

    invoke-direct/range {v1 .. v6}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    move-object/from16 v33, v1

    sput-object v33, Le93;->INT32:Le93;

    new-instance v1, Le93;

    const/4 v3, 0x5

    const/4 v4, 0x5

    const-string v2, "FIXED64"

    move-object/from16 v6, v24

    invoke-direct/range {v1 .. v6}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    move-object/from16 v34, v1

    sput-object v34, Le93;->FIXED64:Le93;

    new-instance v1, Le93;

    const/4 v3, 0x6

    const/4 v4, 0x6

    const-string v2, "FIXED32"

    move-object/from16 v6, v32

    invoke-direct/range {v1 .. v6}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    move-object/from16 v35, v1

    sput-object v35, Le93;->FIXED32:Le93;

    new-instance v1, Le93;

    sget-object v41, Lgb4;->BOOLEAN:Lgb4;

    const-string v2, "BOOL"

    const/4 v3, 0x7

    const/4 v4, 0x7

    move-object/from16 v6, v41

    invoke-direct/range {v1 .. v6}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    move-object/from16 v42, v1

    sput-object v42, Le93;->BOOL:Le93;

    new-instance v1, Le93;

    sget-object v48, Lgb4;->STRING:Lgb4;

    const-string v2, "STRING"

    const/16 v3, 0x8

    const/16 v4, 0x8

    move-object/from16 v6, v48

    invoke-direct/range {v1 .. v6}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    move-object/from16 v49, v1

    sput-object v49, Le93;->STRING:Le93;

    new-instance v1, Le93;

    sget-object v6, Lgb4;->MESSAGE:Lgb4;

    const-string v2, "MESSAGE"

    const/16 v3, 0x9

    const/16 v4, 0x9

    invoke-direct/range {v1 .. v6}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    move-object/from16 v56, v1

    move-object/from16 v55, v6

    sput-object v56, Le93;->MESSAGE:Le93;

    new-instance v1, Le93;

    sget-object v6, Lgb4;->BYTE_STRING:Lgb4;

    const-string v2, "BYTES"

    const/16 v3, 0xa

    const/16 v4, 0xa

    invoke-direct/range {v1 .. v6}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    move-object/from16 v63, v1

    move-object/from16 v62, v6

    sput-object v63, Le93;->BYTES:Le93;

    new-instance v1, Le93;

    const/16 v3, 0xb

    const/16 v4, 0xb

    const-string v2, "UINT32"

    move-object/from16 v6, v32

    invoke-direct/range {v1 .. v6}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    move-object/from16 v64, v1

    sput-object v64, Le93;->UINT32:Le93;

    new-instance v1, Le93;

    sget-object v70, Lgb4;->ENUM:Lgb4;

    const-string v2, "ENUM"

    const/16 v3, 0xc

    const/16 v4, 0xc

    move-object/from16 v6, v70

    invoke-direct/range {v1 .. v6}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    move-object/from16 v71, v1

    sput-object v71, Le93;->ENUM:Le93;

    new-instance v1, Le93;

    const/16 v3, 0xd

    const/16 v4, 0xd

    const-string v2, "SFIXED32"

    move-object/from16 v6, v32

    invoke-direct/range {v1 .. v6}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    move-object/from16 v72, v1

    sput-object v72, Le93;->SFIXED32:Le93;

    new-instance v1, Le93;

    const/16 v3, 0xe

    const/16 v4, 0xe

    const-string v2, "SFIXED64"

    move-object/from16 v6, v24

    invoke-direct/range {v1 .. v6}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    move-object/from16 v73, v1

    sput-object v73, Le93;->SFIXED64:Le93;

    new-instance v16, Le93;

    const/16 v3, 0xf

    const/16 v4, 0xf

    const-string v2, "SINT32"

    move-object/from16 v1, v16

    move-object/from16 v6, v32

    invoke-direct/range {v1 .. v6}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    move-object/from16 v74, v1

    sput-object v74, Le93;->SINT32:Le93;

    new-instance v1, Le93;

    const/16 v3, 0x10

    const/16 v4, 0x10

    const-string v2, "SINT64"

    move-object/from16 v6, v24

    invoke-direct/range {v1 .. v6}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    move-object/from16 v75, v1

    sput-object v75, Le93;->SINT64:Le93;

    new-instance v1, Le93;

    const/16 v3, 0x11

    const/16 v4, 0x11

    const-string v2, "GROUP"

    move-object/from16 v6, v55

    invoke-direct/range {v1 .. v6}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    sput-object v1, Le93;->GROUP:Le93;

    new-instance v19, Le93;

    sget-object v23, Le93$b;->VECTOR:Le93$b;

    const-string v7, "DOUBLE_LIST"

    const/16 v8, 0x12

    const/16 v9, 0x12

    move-object/from16 v6, v19

    move-object/from16 v10, v23

    invoke-direct/range {v6 .. v11}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    move-object v2, v6

    sput-object v2, Le93;->DOUBLE_LIST:Le93;

    new-instance v20, Le93;

    const/16 v14, 0x13

    const/16 v15, 0x13

    const-string v13, "FLOAT_LIST"

    move-object/from16 v12, v20

    move-object/from16 v16, v23

    invoke-direct/range {v12 .. v17}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    move-object v3, v12

    sput-object v3, Le93;->FLOAT_LIST:Le93;

    new-instance v19, Le93;

    const/16 v21, 0x14

    const/16 v22, 0x14

    const-string v20, "INT64_LIST"

    invoke-direct/range {v19 .. v24}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    move-object/from16 v4, v19

    sput-object v4, Le93;->INT64_LIST:Le93;

    new-instance v19, Le93;

    const/16 v21, 0x15

    const/16 v22, 0x15

    const-string v20, "UINT64_LIST"

    invoke-direct/range {v19 .. v24}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    move-object/from16 v5, v19

    sput-object v5, Le93;->UINT64_LIST:Le93;

    new-instance v27, Le93;

    const/16 v29, 0x16

    const/16 v30, 0x16

    const-string v28, "INT32_LIST"

    move-object/from16 v31, v23

    invoke-direct/range {v27 .. v32}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    move-object/from16 v76, v27

    sput-object v76, Le93;->INT32_LIST:Le93;

    new-instance v19, Le93;

    const/16 v21, 0x17

    const/16 v22, 0x17

    const-string v20, "FIXED64_LIST"

    invoke-direct/range {v19 .. v24}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    move-object/from16 v77, v19

    sput-object v77, Le93;->FIXED64_LIST:Le93;

    new-instance v27, Le93;

    const/16 v29, 0x18

    const/16 v30, 0x18

    const-string v28, "FIXED32_LIST"

    invoke-direct/range {v27 .. v32}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    move-object/from16 v78, v3

    move-object/from16 v3, v25

    move-object/from16 v25, v27

    sput-object v25, Le93;->FIXED32_LIST:Le93;

    new-instance v36, Le93;

    const/16 v38, 0x19

    const/16 v39, 0x19

    const-string v37, "BOOL_LIST"

    move-object/from16 v40, v23

    invoke-direct/range {v36 .. v41}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    move-object/from16 v79, v4

    move-object/from16 v4, v26

    move-object/from16 v26, v36

    sput-object v26, Le93;->BOOL_LIST:Le93;

    new-instance v43, Le93;

    const/16 v45, 0x1a

    const/16 v46, 0x1a

    const-string v44, "STRING_LIST"

    move-object/from16 v47, v23

    invoke-direct/range {v43 .. v48}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    sput-object v43, Le93;->STRING_LIST:Le93;

    new-instance v50, Le93;

    const/16 v52, 0x1b

    const/16 v53, 0x1b

    const-string v51, "MESSAGE_LIST"

    move-object/from16 v54, v23

    invoke-direct/range {v50 .. v55}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    move-object/from16 v44, v50

    sput-object v44, Le93;->MESSAGE_LIST:Le93;

    new-instance v57, Le93;

    const/16 v59, 0x1c

    const/16 v60, 0x1c

    const-string v58, "BYTES_LIST"

    move-object/from16 v61, v23

    invoke-direct/range {v57 .. v62}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    sput-object v57, Le93;->BYTES_LIST:Le93;

    new-instance v27, Le93;

    const/16 v29, 0x1d

    const/16 v30, 0x1d

    const-string v28, "UINT32_LIST"

    invoke-direct/range {v27 .. v32}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    move-object/from16 v45, v27

    sput-object v45, Le93;->UINT32_LIST:Le93;

    new-instance v65, Le93;

    const/16 v67, 0x1e

    const/16 v68, 0x1e

    const-string v66, "ENUM_LIST"

    move-object/from16 v69, v23

    invoke-direct/range {v65 .. v70}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    move-object/from16 v46, v65

    sput-object v46, Le93;->ENUM_LIST:Le93;

    new-instance v27, Le93;

    const/16 v29, 0x1f

    const/16 v30, 0x1f

    const-string v28, "SFIXED32_LIST"

    invoke-direct/range {v27 .. v32}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    move-object/from16 v47, v27

    sput-object v47, Le93;->SFIXED32_LIST:Le93;

    new-instance v19, Le93;

    const/16 v21, 0x20

    const/16 v22, 0x20

    const-string v20, "SFIXED64_LIST"

    invoke-direct/range {v19 .. v24}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    move-object/from16 v48, v5

    move-object/from16 v5, v33

    move-object/from16 v33, v19

    sput-object v33, Le93;->SFIXED64_LIST:Le93;

    new-instance v27, Le93;

    const/16 v29, 0x21

    const/16 v30, 0x21

    const-string v28, "SINT32_LIST"

    invoke-direct/range {v27 .. v32}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    move-object/from16 v58, v34

    move-object/from16 v34, v27

    sput-object v34, Le93;->SINT32_LIST:Le93;

    new-instance v19, Le93;

    const/16 v21, 0x22

    const/16 v22, 0x22

    const-string v20, "SINT64_LIST"

    invoke-direct/range {v19 .. v24}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    move-object/from16 v59, v35

    move-object/from16 v35, v19

    sput-object v35, Le93;->SINT64_LIST:Le93;

    new-instance v36, Le93;

    sget-object v23, Le93$b;->PACKED_VECTOR:Le93$b;

    const-string v7, "DOUBLE_LIST_PACKED"

    const/16 v8, 0x23

    const/16 v9, 0x23

    move-object/from16 v10, v23

    move-object/from16 v6, v36

    invoke-direct/range {v6 .. v11}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    sput-object v6, Le93;->DOUBLE_LIST_PACKED:Le93;

    new-instance v37, Le93;

    const/16 v14, 0x24

    const/16 v15, 0x24

    const-string v13, "FLOAT_LIST_PACKED"

    move-object/from16 v16, v23

    move-object/from16 v12, v37

    invoke-direct/range {v12 .. v17}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    sput-object v12, Le93;->FLOAT_LIST_PACKED:Le93;

    new-instance v19, Le93;

    const/16 v21, 0x25

    const/16 v22, 0x25

    const-string v20, "INT64_LIST_PACKED"

    invoke-direct/range {v19 .. v24}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    move-object/from16 v7, v19

    sput-object v7, Le93;->INT64_LIST_PACKED:Le93;

    new-instance v19, Le93;

    const/16 v21, 0x26

    const/16 v22, 0x26

    const-string v20, "UINT64_LIST_PACKED"

    invoke-direct/range {v19 .. v24}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    move-object/from16 v8, v19

    sput-object v8, Le93;->UINT64_LIST_PACKED:Le93;

    new-instance v40, Le93;

    const/16 v29, 0x27

    const/16 v30, 0x27

    const-string v28, "INT32_LIST_PACKED"

    move-object/from16 v31, v23

    move-object/from16 v27, v40

    invoke-direct/range {v27 .. v32}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    move-object/from16 v9, v27

    sput-object v9, Le93;->INT32_LIST_PACKED:Le93;

    new-instance v19, Le93;

    const/16 v21, 0x28

    const/16 v22, 0x28

    const-string v20, "FIXED64_LIST_PACKED"

    invoke-direct/range {v19 .. v24}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    move-object/from16 v10, v19

    sput-object v10, Le93;->FIXED64_LIST_PACKED:Le93;

    new-instance v27, Le93;

    const/16 v29, 0x29

    const/16 v30, 0x29

    const-string v28, "FIXED32_LIST_PACKED"

    invoke-direct/range {v27 .. v32}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    move-object v11, v8

    move-object/from16 v8, v42

    move-object/from16 v42, v27

    sput-object v42, Le93;->FIXED32_LIST_PACKED:Le93;

    new-instance v36, Le93;

    const/16 v38, 0x2a

    const/16 v39, 0x2a

    const-string v37, "BOOL_LIST_PACKED"

    move-object/from16 v40, v23

    invoke-direct/range {v36 .. v41}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    sput-object v36, Le93;->BOOL_LIST_PACKED:Le93;

    new-instance v27, Le93;

    const/16 v29, 0x2b

    const/16 v30, 0x2b

    const-string v28, "UINT32_LIST_PACKED"

    invoke-direct/range {v27 .. v32}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    move-object/from16 v13, v44

    move-object/from16 v44, v27

    sput-object v44, Le93;->UINT32_LIST_PACKED:Le93;

    new-instance v65, Le93;

    const/16 v67, 0x2c

    const/16 v68, 0x2c

    const-string v66, "ENUM_LIST_PACKED"

    move-object/from16 v69, v23

    invoke-direct/range {v65 .. v70}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    sput-object v65, Le93;->ENUM_LIST_PACKED:Le93;

    new-instance v27, Le93;

    const/16 v29, 0x2d

    const/16 v30, 0x2d

    const-string v28, "SFIXED32_LIST_PACKED"

    invoke-direct/range {v27 .. v32}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    move-object/from16 v14, v46

    move-object/from16 v46, v27

    sput-object v46, Le93;->SFIXED32_LIST_PACKED:Le93;

    new-instance v19, Le93;

    const/16 v21, 0x2e

    const/16 v22, 0x2e

    const-string v20, "SFIXED64_LIST_PACKED"

    invoke-direct/range {v19 .. v24}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    move-object/from16 v15, v47

    move-object/from16 v47, v19

    sput-object v47, Le93;->SFIXED64_LIST_PACKED:Le93;

    new-instance v27, Le93;

    const/16 v29, 0x2f

    const/16 v30, 0x2f

    const-string v28, "SINT32_LIST_PACKED"

    invoke-direct/range {v27 .. v32}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    sput-object v27, Le93;->SINT32_LIST_PACKED:Le93;

    new-instance v19, Le93;

    const/16 v21, 0x30

    const/16 v22, 0x30

    const-string v20, "SINT64_LIST_PACKED"

    invoke-direct/range {v19 .. v24}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    sput-object v19, Le93;->SINT64_LIST_PACKED:Le93;

    new-instance v50, Le93;

    const/16 v52, 0x31

    const/16 v53, 0x31

    const-string v51, "GROUP_LIST"

    invoke-direct/range {v50 .. v55}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    sput-object v50, Le93;->GROUP_LIST:Le93;

    new-instance v80, Le93;

    sget-object v84, Le93$b;->MAP:Le93$b;

    sget-object v85, Lgb4;->VOID:Lgb4;

    const-string v81, "MAP"

    const/16 v82, 0x32

    const/16 v83, 0x32

    invoke-direct/range {v80 .. v85}, Le93;-><init>(Ljava/lang/String;IILe93$b;Lgb4;)V

    sput-object v80, Le93;->MAP:Le93;

    move-object/from16 v38, v7

    move-object/from16 v40, v9

    move-object/from16 v41, v10

    move-object/from16 v39, v11

    move-object/from16 v37, v12

    move-object/from16 v28, v13

    move-object/from16 v31, v14

    move-object/from16 v32, v15

    move-object/from16 v30, v45

    move-object/from16 v22, v48

    move-object/from16 v9, v49

    move-object/from16 v10, v56

    move-object/from16 v29, v57

    move-object/from16 v7, v59

    move-object/from16 v11, v63

    move-object/from16 v12, v64

    move-object/from16 v45, v65

    move-object/from16 v13, v71

    move-object/from16 v14, v72

    move-object/from16 v15, v73

    move-object/from16 v16, v74

    move-object/from16 v17, v75

    move-object/from16 v23, v76

    move-object/from16 v24, v77

    move-object/from16 v20, v78

    move-object/from16 v21, v79

    move-object/from16 v51, v80

    move-object/from16 v49, v19

    move-object/from16 v48, v27

    move-object/from16 v27, v43

    move-object/from16 v19, v2

    move-object/from16 v2, v18

    move-object/from16 v43, v36

    move-object/from16 v18, v1

    move-object/from16 v36, v6

    move-object/from16 v6, v58

    move-object v1, v0

    filled-new-array/range {v1 .. v51}, [Le93;

    move-result-object v0

    sput-object v0, Le93;->$VALUES:[Le93;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/reflect/Type;

    sput-object v1, Le93;->EMPTY_TYPES:[Ljava/lang/reflect/Type;

    invoke-static {}, Le93;->values()[Le93;

    move-result-object v1

    array-length v2, v1

    new-array v2, v2, [Le93;

    sput-object v2, Le93;->VALUES:[Le93;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    sget-object v4, Le93;->VALUES:[Le93;

    iget v5, v3, Le93;->id:I

    aput-object v3, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILe93$b;Lgb4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le93$b;",
            "Lgb4;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Le93;->id:I

    iput-object p4, p0, Le93;->collection:Le93$b;

    iput-object p5, p0, Le93;->javaType:Lgb4;

    sget-object p1, Le93$a;->a:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x2

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Le93;->elementType:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-virtual {p5}, Lgb4;->a()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Le93;->elementType:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    invoke-virtual {p5}, Lgb4;->a()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Le93;->elementType:Ljava/lang/Class;

    :goto_0
    sget-object p1, Le93$b;->SCALAR:Le93$b;

    if-ne p4, p1, :cond_2

    sget-object p1, Le93$a;->b:[I

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p1, p1, p4

    if-eq p1, p3, :cond_2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    iput-boolean p3, p0, Le93;->primitiveScalar:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le93;
    .locals 1

    const-class v0, Le93;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le93;

    return-object p0
.end method

.method public static values()[Le93;
    .locals 1

    sget-object v0, Le93;->$VALUES:[Le93;

    invoke-virtual {v0}, [Le93;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le93;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Le93;->id:I

    return p0
.end method
