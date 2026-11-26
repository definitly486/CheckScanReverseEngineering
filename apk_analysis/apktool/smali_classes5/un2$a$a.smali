.class public final Lun2$a$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lun2$a;->d(I)Ls18;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/io/IOException;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lun2;

.field public final synthetic g:Lun2$a;


# direct methods
.method public constructor <init>(Lun2;Lun2$a;)V
    .locals 0

    iput-object p1, p0, Lun2$a$a;->f:Lun2;

    iput-object p2, p0, Lun2$a$a;->g:Lun2$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lun2$a$a;->f:Lun2;

    iget-object p0, p0, Lun2$a$a;->g:Lun2$a;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0}, Lun2$a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method
