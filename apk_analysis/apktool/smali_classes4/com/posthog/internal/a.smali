.class public final enum Lcom/posthog/internal/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/posthog/internal/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/posthog/internal/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lg03;

.field private static final synthetic $VALUES:[Lcom/posthog/internal/a;

.field public static final Companion:Lcom/posthog/internal/a$a;

.field public static final enum EXACT:Lcom/posthog/internal/a;

.field public static final enum FLAG_EVALUATES_TO:Lcom/posthog/internal/a;

.field public static final enum GT:Lcom/posthog/internal/a;

.field public static final enum GTE:Lcom/posthog/internal/a;

.field public static final enum ICONTAINS:Lcom/posthog/internal/a;

.field public static final enum IN:Lcom/posthog/internal/a;

.field public static final enum IS_DATE_AFTER:Lcom/posthog/internal/a;

.field public static final enum IS_DATE_BEFORE:Lcom/posthog/internal/a;

.field public static final enum IS_NOT:Lcom/posthog/internal/a;

.field public static final enum IS_NOT_SET:Lcom/posthog/internal/a;

.field public static final enum IS_SET:Lcom/posthog/internal/a;

.field public static final enum LT:Lcom/posthog/internal/a;

.field public static final enum LTE:Lcom/posthog/internal/a;

.field public static final enum NOT_ICONTAINS:Lcom/posthog/internal/a;

.field public static final enum NOT_REGEX:Lcom/posthog/internal/a;

.field public static final enum REGEX:Lcom/posthog/internal/a;

.field public static final enum SEMVER_CARET:Lcom/posthog/internal/a;

.field public static final enum SEMVER_EQ:Lcom/posthog/internal/a;

.field public static final enum SEMVER_GT:Lcom/posthog/internal/a;

.field public static final enum SEMVER_GTE:Lcom/posthog/internal/a;

.field public static final enum SEMVER_LT:Lcom/posthog/internal/a;

.field public static final enum SEMVER_LTE:Lcom/posthog/internal/a;

.field public static final enum SEMVER_NEQ:Lcom/posthog/internal/a;

.field public static final enum SEMVER_TILDE:Lcom/posthog/internal/a;

.field public static final enum SEMVER_WILDCARD:Lcom/posthog/internal/a;

.field public static final enum UNKNOWN:Lcom/posthog/internal/a;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    new-instance v1, Lcom/posthog/internal/a;

    const-string v0, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/posthog/internal/a;->UNKNOWN:Lcom/posthog/internal/a;

    new-instance v2, Lcom/posthog/internal/a;

    const-string v0, "EXACT"

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/posthog/internal/a;->EXACT:Lcom/posthog/internal/a;

    new-instance v3, Lcom/posthog/internal/a;

    const-string v0, "IS_NOT"

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/posthog/internal/a;->IS_NOT:Lcom/posthog/internal/a;

    new-instance v4, Lcom/posthog/internal/a;

    const-string v0, "IS_SET"

    const/4 v5, 0x3

    invoke-direct {v4, v0, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/posthog/internal/a;->IS_SET:Lcom/posthog/internal/a;

    new-instance v5, Lcom/posthog/internal/a;

    const-string v0, "IS_NOT_SET"

    const/4 v6, 0x4

    invoke-direct {v5, v0, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/posthog/internal/a;->IS_NOT_SET:Lcom/posthog/internal/a;

    new-instance v6, Lcom/posthog/internal/a;

    const-string v0, "ICONTAINS"

    const/4 v7, 0x5

    invoke-direct {v6, v0, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/posthog/internal/a;->ICONTAINS:Lcom/posthog/internal/a;

    new-instance v7, Lcom/posthog/internal/a;

    const-string v0, "NOT_ICONTAINS"

    const/4 v8, 0x6

    invoke-direct {v7, v0, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/posthog/internal/a;->NOT_ICONTAINS:Lcom/posthog/internal/a;

    new-instance v8, Lcom/posthog/internal/a;

    const-string v0, "REGEX"

    const/4 v9, 0x7

    invoke-direct {v8, v0, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/posthog/internal/a;->REGEX:Lcom/posthog/internal/a;

    new-instance v9, Lcom/posthog/internal/a;

    const-string v0, "NOT_REGEX"

    const/16 v10, 0x8

    invoke-direct {v9, v0, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/posthog/internal/a;->NOT_REGEX:Lcom/posthog/internal/a;

    new-instance v10, Lcom/posthog/internal/a;

    const-string v0, "IN"

    const/16 v11, 0x9

    invoke-direct {v10, v0, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/posthog/internal/a;->IN:Lcom/posthog/internal/a;

    new-instance v11, Lcom/posthog/internal/a;

    const-string v0, "GT"

    const/16 v12, 0xa

    invoke-direct {v11, v0, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/posthog/internal/a;->GT:Lcom/posthog/internal/a;

    new-instance v12, Lcom/posthog/internal/a;

    const-string v0, "GTE"

    const/16 v13, 0xb

    invoke-direct {v12, v0, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/posthog/internal/a;->GTE:Lcom/posthog/internal/a;

    new-instance v13, Lcom/posthog/internal/a;

    const-string v0, "LT"

    const/16 v14, 0xc

    invoke-direct {v13, v0, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/posthog/internal/a;->LT:Lcom/posthog/internal/a;

    new-instance v14, Lcom/posthog/internal/a;

    const-string v0, "LTE"

    const/16 v15, 0xd

    invoke-direct {v14, v0, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/posthog/internal/a;->LTE:Lcom/posthog/internal/a;

    new-instance v15, Lcom/posthog/internal/a;

    const-string v0, "IS_DATE_BEFORE"

    move-object/from16 v16, v1

    const/16 v1, 0xe

    invoke-direct {v15, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/posthog/internal/a;->IS_DATE_BEFORE:Lcom/posthog/internal/a;

    new-instance v0, Lcom/posthog/internal/a;

    const-string v1, "IS_DATE_AFTER"

    move-object/from16 v17, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/posthog/internal/a;->IS_DATE_AFTER:Lcom/posthog/internal/a;

    new-instance v1, Lcom/posthog/internal/a;

    const-string v2, "FLAG_EVALUATES_TO"

    move-object/from16 v18, v0

    const/16 v0, 0x10

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/posthog/internal/a;->FLAG_EVALUATES_TO:Lcom/posthog/internal/a;

    new-instance v0, Lcom/posthog/internal/a;

    const-string v2, "SEMVER_EQ"

    move-object/from16 v19, v1

    const/16 v1, 0x11

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/posthog/internal/a;->SEMVER_EQ:Lcom/posthog/internal/a;

    new-instance v1, Lcom/posthog/internal/a;

    const-string v2, "SEMVER_NEQ"

    move-object/from16 v20, v0

    const/16 v0, 0x12

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/posthog/internal/a;->SEMVER_NEQ:Lcom/posthog/internal/a;

    new-instance v0, Lcom/posthog/internal/a;

    const-string v2, "SEMVER_GT"

    move-object/from16 v21, v1

    const/16 v1, 0x13

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/posthog/internal/a;->SEMVER_GT:Lcom/posthog/internal/a;

    new-instance v1, Lcom/posthog/internal/a;

    const-string v2, "SEMVER_GTE"

    move-object/from16 v22, v0

    const/16 v0, 0x14

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/posthog/internal/a;->SEMVER_GTE:Lcom/posthog/internal/a;

    new-instance v0, Lcom/posthog/internal/a;

    const-string v2, "SEMVER_LT"

    move-object/from16 v23, v1

    const/16 v1, 0x15

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/posthog/internal/a;->SEMVER_LT:Lcom/posthog/internal/a;

    new-instance v1, Lcom/posthog/internal/a;

    const-string v2, "SEMVER_LTE"

    move-object/from16 v24, v0

    const/16 v0, 0x16

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/posthog/internal/a;->SEMVER_LTE:Lcom/posthog/internal/a;

    new-instance v0, Lcom/posthog/internal/a;

    const-string v2, "SEMVER_TILDE"

    move-object/from16 v25, v1

    const/16 v1, 0x17

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/posthog/internal/a;->SEMVER_TILDE:Lcom/posthog/internal/a;

    new-instance v1, Lcom/posthog/internal/a;

    const-string v2, "SEMVER_CARET"

    move-object/from16 v26, v0

    const/16 v0, 0x18

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/posthog/internal/a;->SEMVER_CARET:Lcom/posthog/internal/a;

    new-instance v0, Lcom/posthog/internal/a;

    const-string v2, "SEMVER_WILDCARD"

    move-object/from16 v27, v1

    const/16 v1, 0x19

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/posthog/internal/a;->SEMVER_WILDCARD:Lcom/posthog/internal/a;

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    move-object/from16 v20, v22

    move-object/from16 v21, v23

    move-object/from16 v22, v24

    move-object/from16 v23, v25

    move-object/from16 v24, v26

    move-object/from16 v25, v27

    move-object/from16 v26, v0

    filled-new-array/range {v1 .. v26}, [Lcom/posthog/internal/a;

    move-result-object v0

    sput-object v0, Lcom/posthog/internal/a;->$VALUES:[Lcom/posthog/internal/a;

    new-instance v1, Li03;

    invoke-direct {v1, v0}, Li03;-><init>([Ljava/lang/Enum;)V

    sput-object v1, Lcom/posthog/internal/a;->$ENTRIES:Lg03;

    new-instance v0, Lcom/posthog/internal/a$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/posthog/internal/a;->Companion:Lcom/posthog/internal/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/posthog/internal/a;
    .locals 1

    const-class v0, Lcom/posthog/internal/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/posthog/internal/a;

    return-object p0
.end method

.method public static values()[Lcom/posthog/internal/a;
    .locals 1

    sget-object v0, Lcom/posthog/internal/a;->$VALUES:[Lcom/posthog/internal/a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/posthog/internal/a;

    return-object v0
.end method
