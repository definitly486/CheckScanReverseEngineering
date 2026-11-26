.class public final Lyads/is2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/hs2;


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyads/is2;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final f()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lyads/is2;->a:Ljava/util/ArrayList;

    return-object p0
.end method
