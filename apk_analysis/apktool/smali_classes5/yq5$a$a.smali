.class public final Lyq5$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyq5$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic b:Lyq5$a;


# direct methods
.method public constructor <init>(Lyq5$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyq5$a$a;->b:Lyq5$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lyq5$a$a;->b:Lyq5$a;

    iget-object v0, p0, Lyq5$a;->e:Lhe7$c;

    :try_start_0
    iget-object p0, p0, Lyq5$a;->b:Lls5;

    invoke-interface {p0}, Lls5;->onComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lcp2;->dispose()V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Lcp2;->dispose()V

    throw p0
.end method
