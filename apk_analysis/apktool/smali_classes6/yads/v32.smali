.class public final Lyads/v32;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/vq0;

.field public final b:Ljava/util/ArrayList;

.field public c:Z


# direct methods
.method public constructor <init>(Lyads/vq0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/v32;->a:Lyads/vq0;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lyads/v32;->b:Ljava/util/ArrayList;

    return-void
.end method
