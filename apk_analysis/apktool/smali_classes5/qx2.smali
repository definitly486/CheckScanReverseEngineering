.class public final enum Lqx2;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lmw6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lqx2;",
        ">;",
        "Lmw6<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lqx2;

.field public static final enum INSTANCE:Lqx2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lqx2;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqx2;->INSTANCE:Lqx2;

    filled-new-array {v0}, [Lqx2;

    move-result-object v0

    sput-object v0, Lqx2;->$VALUES:[Lqx2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lqx2;
    .locals 1

    const-class v0, Lqx2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lqx2;

    return-object p0
.end method

.method public static values()[Lqx2;
    .locals 1

    sget-object v0, Lqx2;->$VALUES:[Lqx2;

    invoke-virtual {v0}, [Lqx2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lqx2;

    return-object v0
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    return-void
.end method

.method public final clear()V
    .locals 0

    return-void
.end method

.method public final d(I)I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Should not be called!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final request(J)V
    .locals 0

    invoke-static {p1, p2}, Lhc8;->e(J)Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "EmptySubscription"

    return-object p0
.end method
