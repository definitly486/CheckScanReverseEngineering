.class public final Lpq4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpq4$b;
    }
.end annotation


# instance fields
.field public a:Lpq4$b;

.field public final b:Ljava/lang/StringBuilder;

.field public final c:Ljava/util/ArrayList;

.field public d:Ljava/lang/StringBuilder;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:C

.field public h:Ljava/lang/StringBuilder;

.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lpq4$b;->START_DEFINITION:Lpq4$b;

    iput-object v0, p0, Lpq4;->a:Lpq4$b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lpq4;->b:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpq4;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lpq4;->i:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-boolean v0, p0, Lpq4;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lpq4;->f:Ljava/lang/String;

    invoke-static {v0}, Lw03;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lpq4;->h:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lw03;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    new-instance v3, Loq4;

    iget-object v4, p0, Lpq4;->e:Ljava/lang/String;

    invoke-direct {v3}, Lzn5;-><init>()V

    iput-object v4, v3, Loq4;->f:Ljava/lang/String;

    iput-object v0, v3, Loq4;->g:Ljava/lang/String;

    iput-object v1, v3, Loq4;->h:Ljava/lang/String;

    iget-object v0, p0, Lpq4;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v2, p0, Lpq4;->d:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lpq4;->i:Z

    iput-object v2, p0, Lpq4;->e:Ljava/lang/String;

    iput-object v2, p0, Lpq4;->f:Ljava/lang/String;

    iput-object v2, p0, Lpq4;->h:Ljava/lang/StringBuilder;

    return-void
.end method
