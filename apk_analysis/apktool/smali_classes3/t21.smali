.class public final synthetic Lt21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/work/impl/WorkManagerImpl;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt21;->b:Landroidx/work/impl/WorkManagerImpl;

    iput-object p2, p0, Lt21;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lt21;->b:Landroidx/work/impl/WorkManagerImpl;

    iget-object p0, p0, Lt21;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Landroidx/work/impl/utils/CancelWorkRunnable;->h(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)Lj59;

    move-result-object p0

    return-object p0
.end method
