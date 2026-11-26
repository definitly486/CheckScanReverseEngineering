.class public final Landroidx/camera/viewfinder/core/impl/RefCounted;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/viewfinder/core/impl/RefCounted$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/viewfinder/core/impl/RefCounted$Companion;

.field private static final RELEASED:Lb36;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb36<",
            "Lj59;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RefCounted"

.field private static final UNINITIALIZED:Lb36;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb36<",
            "Lj59;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final debugRefCounts:Z

.field private final onRelease:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "TT;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final refCounted:Lot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lot<",
            "Lb36<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/camera/viewfinder/core/impl/RefCounted$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/viewfinder/core/impl/RefCounted$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/viewfinder/core/impl/RefCounted;->Companion:Landroidx/camera/viewfinder/core/impl/RefCounted$Companion;

    new-instance v0, Lb36;

    sget-object v1, Lj59;->a:Lj59;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Landroidx/camera/viewfinder/core/impl/RefCounted;->UNINITIALIZED:Lb36;

    new-instance v0, Lb36;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Landroidx/camera/viewfinder/core/impl/RefCounted;->RELEASED:Lb36;

    return-void
.end method

.method public constructor <init>(ZLnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lnl3<",
            "-TT;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/camera/viewfinder/core/impl/RefCounted;->debugRefCounts:Z

    iput-object p2, p0, Landroidx/camera/viewfinder/core/impl/RefCounted;->onRelease:Lnl3;

    sget-object p1, Landroidx/camera/viewfinder/core/impl/RefCounted;->Companion:Landroidx/camera/viewfinder/core/impl/RefCounted$Companion;

    invoke-static {p1}, Landroidx/camera/viewfinder/core/impl/RefCounted$Companion;->access$uninitialized(Landroidx/camera/viewfinder/core/impl/RefCounted$Companion;)Lb36;

    move-result-object p1

    invoke-static {p1}, Lkt;->d(Ljava/lang/Object;)Lot;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/viewfinder/core/impl/RefCounted;->refCounted:Lot;

    return-void
.end method

.method public synthetic constructor <init>(ZLnl3;ILjh2;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 23
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/camera/viewfinder/core/impl/RefCounted;-><init>(ZLnl3;)V

    return-void
.end method

.method public static final synthetic access$getRELEASED$cp()Lb36;
    .locals 1

    sget-object v0, Landroidx/camera/viewfinder/core/impl/RefCounted;->RELEASED:Lb36;

    return-object v0
.end method

.method public static final synthetic access$getUNINITIALIZED$cp()Lb36;
    .locals 1

    sget-object v0, Landroidx/camera/viewfinder/core/impl/RefCounted;->UNINITIALIZED:Lb36;

    return-object v0
.end method


# virtual methods
.method public final acquire()Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/viewfinder/core/impl/RefCounted;->refCounted:Lot;

    iget-object v0, v0, Lot;->b:Ljava/lang/Object;

    sget-object v1, Landroidx/camera/viewfinder/core/impl/RefCounted;->Companion:Landroidx/camera/viewfinder/core/impl/RefCounted$Companion;

    invoke-static {v1}, Landroidx/camera/viewfinder/core/impl/RefCounted$Companion;->access$uninitialized(Landroidx/camera/viewfinder/core/impl/RefCounted$Companion;)Lb36;

    move-result-object v1

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/camera/viewfinder/core/impl/RefCounted;->refCounted:Lot;

    :cond_0
    iget-object v2, v0, Lot;->b:Ljava/lang/Object;

    check-cast v2, Lb36;

    sget-object v3, Landroidx/camera/viewfinder/core/impl/RefCounted;->Companion:Landroidx/camera/viewfinder/core/impl/RefCounted$Companion;

    invoke-static {v3}, Landroidx/camera/viewfinder/core/impl/RefCounted$Companion;->access$released(Landroidx/camera/viewfinder/core/impl/RefCounted$Companion;)Lb36;

    move-result-object v3

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "%x"

    const-string v5, "RefCounted@"

    const-string v6, "RefCounted"

    const/4 v7, 0x1

    if-eqz v3, :cond_2

    iget-boolean v0, p0, Landroidx/camera/viewfinder/core/impl/RefCounted;->debugRefCounts:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v4, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".acquire() failure: [refCount: 0]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6, p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object v1

    :cond_2
    iget-object v3, v2, Lb36;->b:Ljava/lang/Object;

    iget-object v8, v2, Lb36;->c:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    new-instance v9, Lb36;

    add-int/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v9, v3, v10}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v10, p0, Landroidx/camera/viewfinder/core/impl/RefCounted;->refCounted:Lot;

    invoke-virtual {v10, v2, v9}, Lot;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v0, p0, Landroidx/camera/viewfinder/core/impl/RefCounted;->debugRefCounts:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v4, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3c

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p0

    invoke-virtual {p0}, Lzk1;->f()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ">.acquire() success: [refCount: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", value: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-static {v0, v3, p0}, Lvg;->d(Ljava/lang/StringBuilder;Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6, p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-object v3

    :cond_4
    const-string p0, "Ref-count managed object has not yet been initialized. Unable to acquire."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v1
.end method

.method public final initialize(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lb36;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Landroidx/camera/viewfinder/core/impl/RefCounted;->refCounted:Lot;

    sget-object v3, Landroidx/camera/viewfinder/core/impl/RefCounted;->Companion:Landroidx/camera/viewfinder/core/impl/RefCounted$Companion;

    invoke-static {v3}, Landroidx/camera/viewfinder/core/impl/RefCounted$Companion;->access$uninitialized(Landroidx/camera/viewfinder/core/impl/RefCounted$Companion;)Lb36;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lot;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/camera/viewfinder/core/impl/RefCounted;->debugRefCounts:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "RefCounted@"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%x"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3c

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p0

    invoke-virtual {p0}, Lzk1;->f()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "> initialized: [refCount: 1, value: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    const-string v0, "RefCounted"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void

    :cond_1
    const-string p0, "Ref-count managed object has already been initialized."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final release()V
    .locals 10

    iget-object v0, p0, Landroidx/camera/viewfinder/core/impl/RefCounted;->refCounted:Lot;

    iget-object v0, v0, Lot;->b:Ljava/lang/Object;

    sget-object v1, Landroidx/camera/viewfinder/core/impl/RefCounted;->Companion:Landroidx/camera/viewfinder/core/impl/RefCounted$Companion;

    invoke-static {v1}, Landroidx/camera/viewfinder/core/impl/RefCounted$Companion;->access$uninitialized(Landroidx/camera/viewfinder/core/impl/RefCounted$Companion;)Lb36;

    move-result-object v1

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/camera/viewfinder/core/impl/RefCounted;->refCounted:Lot;

    :cond_0
    iget-object v1, v0, Lot;->b:Ljava/lang/Object;

    check-cast v1, Lb36;

    sget-object v2, Landroidx/camera/viewfinder/core/impl/RefCounted;->Companion:Landroidx/camera/viewfinder/core/impl/RefCounted$Companion;

    invoke-static {v2}, Landroidx/camera/viewfinder/core/impl/RefCounted$Companion;->access$released(Landroidx/camera/viewfinder/core/impl/RefCounted$Companion;)Lb36;

    move-result-object v3

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v1, Lb36;->b:Ljava/lang/Object;

    iget-object v4, v1, Lb36;->c:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    invoke-static {v2}, Landroidx/camera/viewfinder/core/impl/RefCounted$Companion;->access$released(Landroidx/camera/viewfinder/core/impl/RefCounted$Companion;)Lb36;

    move-result-object v6

    goto :goto_0

    :cond_1
    new-instance v6, Lb36;

    add-int/lit8 v7, v4, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    iget-object v7, p0, Landroidx/camera/viewfinder/core/impl/RefCounted;->refCounted:Lot;

    invoke-virtual {v7, v1, v6}, Lot;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v2}, Landroidx/camera/viewfinder/core/impl/RefCounted$Companion;->access$released(Landroidx/camera/viewfinder/core/impl/RefCounted$Companion;)Lb36;

    move-result-object v0

    invoke-static {v6, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-boolean v1, p0, Landroidx/camera/viewfinder/core/impl/RefCounted;->debugRefCounts:Z

    const/16 v2, 0x5d

    const/16 v6, 0x3c

    const-string v7, "%x"

    const-string v8, "RefCounted@"

    const-string v9, "RefCounted"

    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    invoke-virtual {v1}, Lzk1;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">.release() (last ref): [refCount: 0, value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v9, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    iget-object p0, p0, Landroidx/camera/viewfinder/core/impl/RefCounted;->onRelease:Lnl3;

    invoke-interface {p0, v3}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    if-eqz v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v7, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p0

    invoke-virtual {p0}, Lzk1;->f()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ">.release(): [refCount: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", value: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v9, p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    return-void

    :cond_5
    const-string p0, "Release called more times than initialize + acquire."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_6
    const-string p0, "Ref-count managed object has not yet been initialized. Unable to release."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method
