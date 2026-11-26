.class public final Lz2a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lf72;

.field public final b:Ljava/util/Map;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:I

.field public volatile f:Ljava/lang/String;

.field public g:Lz8a;

.field public final h:Lik0;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf72;

    invoke-direct {v0}, Lf72;-><init>()V

    iput-object v0, p0, Lz2a;->a:Lf72;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lz2a;->b:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2a;->c:Z

    sget-object v0, Lz8a;->i:Lz8a;

    iput-object v0, p0, Lz2a;->g:Lz8a;

    new-instance v0, Lik0;

    invoke-direct {v0}, Lik0;-><init>()V

    iput-object v0, p0, Lz2a;->h:Lik0;

    iput p1, p0, Lz2a;->e:I

    iput-object p2, p0, Lz2a;->f:Ljava/lang/String;

    return-void
.end method
