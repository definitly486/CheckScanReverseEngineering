.class public final enum Lyads/yq4;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:Lyads/yq4;

.field public static final enum d:Lyads/yq4;

.field public static final enum e:Lyads/yq4;

.field public static final synthetic f:[Lyads/yq4;


# instance fields
.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lyads/yq4;

    const-string v1, "LANDSCAPE"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lyads/yq4;-><init>(IILjava/lang/String;)V

    sput-object v0, Lyads/yq4;->c:Lyads/yq4;

    new-instance v1, Lyads/yq4;

    const/4 v4, 0x1

    const-string v5, "PORTRAIT"

    invoke-direct {v1, v4, v4, v5}, Lyads/yq4;-><init>(IILjava/lang/String;)V

    sput-object v1, Lyads/yq4;->d:Lyads/yq4;

    new-instance v4, Lyads/yq4;

    const-string v5, "UNDEFINED"

    invoke-direct {v4, v3, v2, v5}, Lyads/yq4;-><init>(IILjava/lang/String;)V

    sput-object v4, Lyads/yq4;->e:Lyads/yq4;

    filled-new-array {v0, v1, v4}, [Lyads/yq4;

    move-result-object v0

    sput-object v0, Lyads/yq4;->f:[Lyads/yq4;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lyads/yq4;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/yq4;
    .locals 1

    const-class v0, Lyads/yq4;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/yq4;

    return-object p0
.end method

.method public static values()[Lyads/yq4;
    .locals 1

    sget-object v0, Lyads/yq4;->f:[Lyads/yq4;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/yq4;

    return-object v0
.end method
