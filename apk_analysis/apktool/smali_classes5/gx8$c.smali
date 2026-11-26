.class public final Lgx8$c;
.super Lgx8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final d:Lm54;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lgx8$i;->Comment:Lgx8$i;

    invoke-direct {p0, v0}, Lgx8;-><init>(Lgx8$i;)V

    new-instance v0, Lm54;

    invoke-direct {v0}, Lm54;-><init>()V

    iput-object v0, p0, Lgx8$c;->d:Lm54;

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 0

    invoke-super {p0}, Lgx8;->f()V

    iget-object p0, p0, Lgx8$c;->d:Lm54;

    invoke-virtual {p0}, Lm54;->d()V

    return-void
.end method

.method public final g(C)V
    .locals 0

    iget-object p0, p0, Lgx8$c;->d:Lm54;

    invoke-virtual {p0, p1}, Lm54;->a(C)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<!--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lgx8$c;->d:Lm54;

    invoke-virtual {p0}, Lm54;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-->"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
