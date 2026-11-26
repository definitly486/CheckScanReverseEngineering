.class public interface abstract Landroidx/compose/runtime/MonotonicFrameClock;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo22$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/MonotonicFrameClock$DefaultImpls;,
        Landroidx/compose/runtime/MonotonicFrameClock$Key;
    }
.end annotation


# static fields
.field public static final Key:Landroidx/compose/runtime/MonotonicFrameClock$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/runtime/MonotonicFrameClock$Key;->$$INSTANCE:Landroidx/compose/runtime/MonotonicFrameClock$Key;

    sput-object v0, Landroidx/compose/runtime/MonotonicFrameClock;->Key:Landroidx/compose/runtime/MonotonicFrameClock$Key;

    return-void
.end method

.method public static synthetic access$getKey$jd(Landroidx/compose/runtime/MonotonicFrameClock;)Lo22$b;
    .locals 0

    invoke-super {p0}, Landroidx/compose/runtime/MonotonicFrameClock;->getKey()Lo22$b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract synthetic fold(Ljava/lang/Object;Lbm3;)Ljava/lang/Object;
.end method

.method public abstract synthetic get(Lo22$b;)Lo22$a;
.end method

.method public getKey()Lo22$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo22$b<",
            "*>;"
        }
    .end annotation

    sget-object p0, Landroidx/compose/runtime/MonotonicFrameClock;->Key:Landroidx/compose/runtime/MonotonicFrameClock$Key;

    return-object p0
.end method

.method public abstract synthetic minusKey(Lo22$b;)Lo22;
.end method

.method public abstract synthetic plus(Lo22;)Lo22;
.end method

.method public abstract withFrameNanos(Lnl3;Le02;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lnl3<",
            "-",
            "Ljava/lang/Long;",
            "+TR;>;",
            "Le02<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
