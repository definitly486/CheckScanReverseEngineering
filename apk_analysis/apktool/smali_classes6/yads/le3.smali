.class public final Lyads/le3;
.super Lyads/g;
.source "SourceFile"


# instance fields
.field public final d:Lyads/oe3;


# direct methods
.method public constructor <init>(Lyads/oe3;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lyads/g;-><init>(II)V

    iput-object p1, p0, Lyads/le3;->d:Lyads/oe3;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lyads/le3;->d:Lyads/oe3;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
