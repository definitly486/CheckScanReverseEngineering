.class public final enum Lhx2;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lyv6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lhx2;",
        ">;",
        "Lyv6<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lhx2;

.field public static final enum INSTANCE:Lhx2;

.field public static final enum NEVER:Lhx2;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lhx2;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhx2;->INSTANCE:Lhx2;

    new-instance v1, Lhx2;

    const-string v2, "NEVER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lhx2;->NEVER:Lhx2;

    filled-new-array {v0, v1}, [Lhx2;

    move-result-object v0

    sput-object v0, Lhx2;->$VALUES:[Lhx2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lhx2;
    .locals 1

    const-class v0, Lhx2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lhx2;

    return-object p0
.end method

.method public static values()[Lhx2;
    .locals 1

    sget-object v0, Lhx2;->$VALUES:[Lhx2;

    invoke-virtual {v0}, [Lhx2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhx2;

    return-object v0
.end method


# virtual methods
.method public final clear()V
    .locals 0

    return-void
.end method

.method public final d(I)I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final dispose()V
    .locals 0

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    sget-object v0, Lhx2;->INSTANCE:Lhx2;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

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
