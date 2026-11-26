.class public final Lgx8$d;
.super Lgx8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final d:Lm54;

.field public e:Ljava/lang/String;

.field public final f:Lm54;

.field public final g:Lm54;

.field public final h:Lm54;

.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lgx8$i;->Doctype:Lgx8$i;

    invoke-direct {p0, v0}, Lgx8;-><init>(Lgx8$i;)V

    new-instance v0, Lm54;

    invoke-direct {v0}, Lm54;-><init>()V

    iput-object v0, p0, Lgx8$d;->d:Lm54;

    const/4 v0, 0x0

    iput-object v0, p0, Lgx8$d;->e:Ljava/lang/String;

    new-instance v0, Lm54;

    invoke-direct {v0}, Lm54;-><init>()V

    iput-object v0, p0, Lgx8$d;->f:Lm54;

    new-instance v0, Lm54;

    invoke-direct {v0}, Lm54;-><init>()V

    iput-object v0, p0, Lgx8$d;->g:Lm54;

    new-instance v0, Lm54;

    invoke-direct {v0}, Lm54;-><init>()V

    iput-object v0, p0, Lgx8$d;->h:Lm54;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgx8$d;->i:Z

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 1

    invoke-super {p0}, Lgx8;->f()V

    iget-object v0, p0, Lgx8$d;->d:Lm54;

    invoke-virtual {v0}, Lm54;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lgx8$d;->e:Ljava/lang/String;

    iget-object v0, p0, Lgx8$d;->f:Lm54;

    invoke-virtual {v0}, Lm54;->d()V

    iget-object v0, p0, Lgx8$d;->g:Lm54;

    invoke-virtual {v0}, Lm54;->d()V

    iget-object v0, p0, Lgx8$d;->h:Lm54;

    invoke-virtual {v0}, Lm54;->d()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgx8$d;->i:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<!doctype "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lgx8$d;->d:Lm54;

    invoke-virtual {p0}, Lm54;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
