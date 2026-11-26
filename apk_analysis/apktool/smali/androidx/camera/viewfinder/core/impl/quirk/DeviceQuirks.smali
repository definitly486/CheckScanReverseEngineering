.class public final Landroidx/camera/viewfinder/core/impl/quirk/DeviceQuirks;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/camera/viewfinder/core/impl/quirk/DeviceQuirks;

.field private static final QUIRKS:Landroidx/camera/viewfinder/core/impl/quirk/Quirks;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/viewfinder/core/impl/quirk/DeviceQuirks;

    invoke-direct {v0}, Landroidx/camera/viewfinder/core/impl/quirk/DeviceQuirks;-><init>()V

    sput-object v0, Landroidx/camera/viewfinder/core/impl/quirk/DeviceQuirks;->INSTANCE:Landroidx/camera/viewfinder/core/impl/quirk/DeviceQuirks;

    new-instance v0, Landroidx/camera/viewfinder/core/impl/quirk/Quirks;

    invoke-static {}, Landroidx/camera/viewfinder/core/impl/quirk/DeviceQuirksLoader;->loadQuirks()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/camera/viewfinder/core/impl/quirk/Quirks;-><init>(Ljava/util/List;)V

    sput-object v0, Landroidx/camera/viewfinder/core/impl/quirk/DeviceQuirks;->QUIRKS:Landroidx/camera/viewfinder/core/impl/quirk/Quirks;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getQUIRKS$p()Landroidx/camera/viewfinder/core/impl/quirk/Quirks;
    .locals 1

    sget-object v0, Landroidx/camera/viewfinder/core/impl/quirk/DeviceQuirks;->QUIRKS:Landroidx/camera/viewfinder/core/impl/quirk/Quirks;

    return-object v0
.end method


# virtual methods
.method public final contains()Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/camera/viewfinder/core/impl/quirk/Quirk;",
            ">()Z"
        }
    .end annotation

    invoke-static {}, Landroidx/camera/viewfinder/core/impl/quirk/DeviceQuirks;->access$getQUIRKS$p()Landroidx/camera/viewfinder/core/impl/quirk/Quirks;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/viewfinder/core/impl/quirk/Quirks;->access$getQuirks$p(Landroidx/camera/viewfinder/core/impl/quirk/Quirks;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/viewfinder/core/impl/quirk/Quirk;

    invoke-static {}, Laa4;->i()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final get()Landroidx/camera/viewfinder/core/impl/quirk/Quirk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/camera/viewfinder/core/impl/quirk/Quirk;",
            ">()TT;"
        }
    .end annotation

    invoke-static {}, Landroidx/camera/viewfinder/core/impl/quirk/DeviceQuirks;->access$getQUIRKS$p()Landroidx/camera/viewfinder/core/impl/quirk/Quirks;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/viewfinder/core/impl/quirk/Quirks;->access$getQuirks$p(Landroidx/camera/viewfinder/core/impl/quirk/Quirks;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/viewfinder/core/impl/quirk/Quirk;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Laa4;->i()V

    throw v1

    :cond_0
    invoke-static {}, Laa4;->i()V

    throw v1
.end method

.method public final reload()V
    .locals 1

    sget-object p0, Landroidx/camera/viewfinder/core/impl/quirk/DeviceQuirks;->QUIRKS:Landroidx/camera/viewfinder/core/impl/quirk/Quirks;

    invoke-static {}, Landroidx/camera/viewfinder/core/impl/quirk/DeviceQuirksLoader;->loadQuirks()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/camera/viewfinder/core/impl/quirk/Quirks;->reset(Ljava/util/List;)V

    return-void
.end method
