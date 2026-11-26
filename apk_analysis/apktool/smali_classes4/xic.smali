.class public final Lxic;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lzic;


# direct methods
.method public constructor <init>(Lzic;)V
    .locals 0

    iput-object p1, p0, Lxic;->b:Lzic;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lwic;

    invoke-direct {v0, p0}, Lwic;-><init>(Lxic;)V

    return-object v0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lxic;->b:Lzic;

    iget p0, p0, Lzic;->e:I

    return p0
.end method
