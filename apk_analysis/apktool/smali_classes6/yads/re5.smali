.class public final Lyads/re5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ie5;

.field public final b:Lyads/hh5;

.field public final c:Lyads/u50;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lyads/ie5;

    invoke-direct {v0}, Lyads/ie5;-><init>()V

    new-instance v1, Lyads/hh5;

    invoke-direct {v1}, Lyads/hh5;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/re5;->a:Lyads/ie5;

    iput-object v1, p0, Lyads/re5;->b:Lyads/hh5;

    new-instance v0, Lyads/u50;

    invoke-direct {v0}, Lyads/u50;-><init>()V

    iput-object v0, p0, Lyads/re5;->c:Lyads/u50;

    return-void
.end method
