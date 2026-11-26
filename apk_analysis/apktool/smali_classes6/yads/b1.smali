.class public final Lyads/b1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/x65;

.field public final b:Lyads/vz3;

.field public final c:Lyads/a1;


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lyads/x65;

    invoke-direct {v0}, Lyads/x65;-><init>()V

    new-instance v1, Lyads/vz3;

    invoke-direct {v1}, Lyads/vz3;-><init>()V

    new-instance v2, Lyads/a1;

    invoke-direct {v2}, Lyads/a1;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/b1;->a:Lyads/x65;

    iput-object v1, p0, Lyads/b1;->b:Lyads/vz3;

    iput-object v2, p0, Lyads/b1;->c:Lyads/a1;

    return-void
.end method
