.class public final enum Lyads/mr2;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic b:[Lyads/mr2;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    new-instance v1, Lyads/mr2;

    const-string v0, "TAP_BEACONS_ENABLED"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lyads/mr2;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lyads/mr2;

    const-string v3, "VISIBILITY_BEACONS_ENABLED"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4}, Lyads/mr2;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lyads/mr2;

    const-string v5, "SWIPE_OUT_BEACONS_ENABLED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lyads/mr2;-><init>(Ljava/lang/String;IZ)V

    new-instance v5, Lyads/mr2;

    const-string v6, "LONGTAP_ACTIONS_PASS_TO_CHILD_ENABLED"

    const/4 v7, 0x3

    invoke-direct {v5, v6, v7}, Lyads/mr2;-><init>(Ljava/lang/String;I)V

    move-object v6, v5

    new-instance v5, Lyads/mr2;

    const-string v7, "IGNORE_ACTION_MENU_ITEMS_ENABLED"

    const/4 v8, 0x4

    invoke-direct {v5, v7, v8}, Lyads/mr2;-><init>(Ljava/lang/String;I)V

    move-object v7, v6

    new-instance v6, Lyads/mr2;

    const-string v8, "HYPHENATION_SUPPORT_ENABLED"

    const/4 v9, 0x5

    invoke-direct {v6, v8, v9}, Lyads/mr2;-><init>(Ljava/lang/String;I)V

    move-object v8, v7

    new-instance v7, Lyads/mr2;

    const-string v9, "VISUAL_ERRORS_ENABLED"

    const/4 v10, 0x6

    invoke-direct {v7, v9, v10}, Lyads/mr2;-><init>(Ljava/lang/String;I)V

    move-object v9, v8

    new-instance v8, Lyads/mr2;

    const-string v10, "ACCESSIBILITY_ENABLED"

    const/4 v11, 0x7

    invoke-direct {v8, v10, v11, v4}, Lyads/mr2;-><init>(Ljava/lang/String;IZ)V

    move-object v10, v9

    new-instance v9, Lyads/mr2;

    const-string v11, "VIEW_POOL_ENABLED"

    const/16 v12, 0x8

    invoke-direct {v9, v11, v12, v4}, Lyads/mr2;-><init>(Ljava/lang/String;IZ)V

    move-object v11, v10

    new-instance v10, Lyads/mr2;

    const-string v12, "VIEW_POOL_PROFILING_ENABLED"

    const/16 v13, 0x9

    invoke-direct {v10, v12, v13}, Lyads/mr2;-><init>(Ljava/lang/String;I)V

    move-object v12, v11

    new-instance v11, Lyads/mr2;

    const-string v13, "VIEW_POOL_OPTIMIZATION_DEBUG"

    const/16 v14, 0xa

    invoke-direct {v11, v13, v14}, Lyads/mr2;-><init>(Ljava/lang/String;I)V

    move-object v13, v12

    new-instance v12, Lyads/mr2;

    const-string v14, "RESOURCE_CACHE_ENABLED"

    const/16 v15, 0xb

    invoke-direct {v12, v14, v15, v4}, Lyads/mr2;-><init>(Ljava/lang/String;IZ)V

    move-object v14, v13

    new-instance v13, Lyads/mr2;

    const-string v15, "SHOW_RENDERING_TIME"

    const/16 v4, 0xc

    invoke-direct {v13, v15, v4, v2}, Lyads/mr2;-><init>(Ljava/lang/String;IZ)V

    move-object v4, v14

    new-instance v14, Lyads/mr2;

    const-string v15, "MULTIPLE_STATE_CHANGE_ENABLED"

    const/16 v2, 0xd

    invoke-direct {v14, v15, v2}, Lyads/mr2;-><init>(Ljava/lang/String;I)V

    new-instance v15, Lyads/mr2;

    const-string v2, "BIND_ON_ATTACH_ENABLED"

    move-object/from16 v18, v0

    const/16 v0, 0xe

    invoke-direct {v15, v2, v0}, Lyads/mr2;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lyads/mr2;

    const-string v2, "COMPLEX_REBIND_ENABLED"

    move-object/from16 v19, v1

    const/16 v1, 0xf

    invoke-direct {v0, v2, v1}, Lyads/mr2;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lyads/mr2;

    const-string v2, "PAGER_PAGE_CLIP_ENABLED"

    move-object/from16 v20, v0

    const/16 v0, 0x10

    move-object/from16 v21, v3

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lyads/mr2;-><init>(Ljava/lang/String;IZ)V

    new-instance v0, Lyads/mr2;

    const-string v2, "PERMANENT_DEBUG_PANEL_ENABLED"

    const/16 v3, 0x11

    move-object/from16 v16, v1

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lyads/mr2;-><init>(Ljava/lang/String;IZ)V

    new-instance v2, Lyads/mr2;

    const-string v3, "RENDER_EFFECT_ENABLED"

    move-object/from16 v17, v0

    const/16 v0, 0x12

    invoke-direct {v2, v3, v0, v1}, Lyads/mr2;-><init>(Ljava/lang/String;IZ)V

    move-object/from16 v1, v19

    move-object/from16 v3, v21

    move-object/from16 v19, v2

    move-object/from16 v2, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v20

    filled-new-array/range {v1 .. v19}, [Lyads/mr2;

    move-result-object v0

    sput-object v0, Lyads/mr2;->b:[Lyads/mr2;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/mr2;
    .locals 1

    const-class v0, Lyads/mr2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/mr2;

    return-object p0
.end method

.method public static values()[Lyads/mr2;
    .locals 1

    sget-object v0, Lyads/mr2;->b:[Lyads/mr2;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/mr2;

    return-object v0
.end method
