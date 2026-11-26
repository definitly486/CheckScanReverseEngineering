.class public final enum Las;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Las;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lg03;

.field private static final synthetic $VALUES:[Las;

.field public static final enum ALIGN_ANCHOR:Las;

.field public static final enum ALIGN_FIXED:Las;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Las;

    const-string v1, "ALIGN_ANCHOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Las;->ALIGN_ANCHOR:Las;

    new-instance v1, Las;

    const-string v2, "ALIGN_FIXED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Las;->ALIGN_FIXED:Las;

    filled-new-array {v0, v1}, [Las;

    move-result-object v0

    sput-object v0, Las;->$VALUES:[Las;

    new-instance v1, Li03;

    invoke-direct {v1, v0}, Li03;-><init>([Ljava/lang/Enum;)V

    sput-object v1, Las;->$ENTRIES:Lg03;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Las;
    .locals 1

    const-class v0, Las;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Las;

    return-object p0
.end method

.method public static values()[Las;
    .locals 1

    sget-object v0, Las;->$VALUES:[Las;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Las;

    return-object v0
.end method
