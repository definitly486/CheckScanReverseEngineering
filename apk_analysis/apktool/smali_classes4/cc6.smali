.class public final Lcc6;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ldc6;


# direct methods
.method public constructor <init>(Ldc6;)V
    .locals 0

    iput-object p1, p0, Lcc6;->b:Ldc6;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcc6;->b:Ldc6;

    iget-object p0, p0, Ldc6;->h:Loa6;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Loa6;->l()V

    :cond_0
    return-void
.end method
