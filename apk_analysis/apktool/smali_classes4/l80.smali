.class public final enum Ll80;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ll80;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lg03;

.field private static final synthetic $VALUES:[Ll80;

.field public static final enum CIRCULAR:Ll80;

.field public static final enum ELASTIC:Ll80;

.field public static final enum FADE:Ll80;

.field public static final enum NONE:Ll80;

.field public static final enum OVERSHOOT:Ll80;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ll80;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll80;->NONE:Ll80;

    new-instance v1, Ll80;

    const-string v2, "ELASTIC"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ll80;->ELASTIC:Ll80;

    new-instance v2, Ll80;

    const-string v3, "FADE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Ll80;->FADE:Ll80;

    new-instance v3, Ll80;

    const-string v4, "CIRCULAR"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ll80;->CIRCULAR:Ll80;

    new-instance v4, Ll80;

    const-string v5, "OVERSHOOT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Ll80;->OVERSHOOT:Ll80;

    filled-new-array {v0, v1, v2, v3, v4}, [Ll80;

    move-result-object v0

    sput-object v0, Ll80;->$VALUES:[Ll80;

    new-instance v1, Li03;

    invoke-direct {v1, v0}, Li03;-><init>([Ljava/lang/Enum;)V

    sput-object v1, Ll80;->$ENTRIES:Lg03;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Ll80;
    .locals 1

    const-class v0, Ll80;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ll80;

    return-object p0
.end method

.method public static values()[Ll80;
    .locals 1

    sget-object v0, Ll80;->$VALUES:[Ll80;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ll80;

    return-object v0
.end method
