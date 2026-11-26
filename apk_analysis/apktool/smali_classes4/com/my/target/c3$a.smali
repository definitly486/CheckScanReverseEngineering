.class public final enum Lcom/my/target/c3$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/c3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcom/my/target/c3$a;

.field public static final enum b:Lcom/my/target/c3$a;

.field public static final enum c:Lcom/my/target/c3$a;

.field private static final synthetic d:[Lcom/my/target/c3$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/my/target/c3$a;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/my/target/c3$a;->a:Lcom/my/target/c3$a;

    new-instance v1, Lcom/my/target/c3$a;

    const-string v2, "RULED_BY_POST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/my/target/c3$a;->b:Lcom/my/target/c3$a;

    new-instance v2, Lcom/my/target/c3$a;

    const-string v3, "RULED_BY_VIDEO"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/my/target/c3$a;->c:Lcom/my/target/c3$a;

    filled-new-array {v0, v1, v2}, [Lcom/my/target/c3$a;

    move-result-object v0

    sput-object v0, Lcom/my/target/c3$a;->d:[Lcom/my/target/c3$a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/my/target/c3$a;
    .locals 1

    const-class v0, Lcom/my/target/c3$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/my/target/c3$a;

    return-object p0
.end method

.method public static values()[Lcom/my/target/c3$a;
    .locals 1

    sget-object v0, Lcom/my/target/c3$a;->d:[Lcom/my/target/c3$a;

    invoke-virtual {v0}, [Lcom/my/target/c3$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/my/target/c3$a;

    return-object v0
.end method
