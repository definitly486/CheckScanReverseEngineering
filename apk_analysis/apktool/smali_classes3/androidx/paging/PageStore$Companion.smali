.class public final Landroidx/paging/PageStore$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/paging/PageStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/paging/PageStore$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final initial$paging_common(Landroidx/paging/PageEvent$Insert;)Landroidx/paging/PageStore;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/paging/PageEvent$Insert<",
            "TT;>;)",
            "Landroidx/paging/PageStore<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance p0, Landroidx/paging/PageStore;

    invoke-direct {p0, p1}, Landroidx/paging/PageStore;-><init>(Landroidx/paging/PageEvent$Insert;)V

    return-object p0

    :cond_0
    invoke-static {}, Landroidx/paging/PageStore;->access$getINITIAL$cp()Landroidx/paging/PageStore;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method
