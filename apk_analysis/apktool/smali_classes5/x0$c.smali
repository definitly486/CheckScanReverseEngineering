.class public final Lx0$c;
.super Lv;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx0;->getValues()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lx0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx0<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx0<",
            "TK;+TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lx0$c;->c:Lx0;

    invoke-direct {p0}, Lv;-><init>()V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lx0$c;->c:Lx0;

    invoke-virtual {p0, p1}, Lx0;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getSize()I
    .locals 0

    iget-object p0, p0, Lx0$c;->c:Lx0;

    invoke-virtual {p0}, Lx0;->size()I

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lx0$c;->c:Lx0;

    invoke-virtual {p0}, Lx0;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    new-instance v0, Lx0$c$a;

    invoke-direct {v0, p0}, Lx0$c$a;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method
