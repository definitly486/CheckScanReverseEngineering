.class public final enum Lbq2$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbq2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbq2$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbq2$a;

.field public static final enum CENTER:Lbq2$a;

.field public static final enum LEFT_ALIGN:Lbq2$a;

.field public static final enum RIGHT_ALIGN:Lbq2$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbq2$a;

    const-string v1, "LEFT_ALIGN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbq2$a;->LEFT_ALIGN:Lbq2$a;

    new-instance v1, Lbq2$a;

    const-string v2, "RIGHT_ALIGN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lbq2$a;->RIGHT_ALIGN:Lbq2$a;

    new-instance v2, Lbq2$a;

    const-string v3, "CENTER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lbq2$a;->CENTER:Lbq2$a;

    filled-new-array {v0, v1, v2}, [Lbq2$a;

    move-result-object v0

    sput-object v0, Lbq2$a;->$VALUES:[Lbq2$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lbq2$a;
    .locals 1

    const-class v0, Lbq2$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbq2$a;

    return-object p0
.end method

.method public static values()[Lbq2$a;
    .locals 1

    sget-object v0, Lbq2$a;->$VALUES:[Lbq2$a;

    invoke-virtual {v0}, [Lbq2$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbq2$a;

    return-object v0
.end method
