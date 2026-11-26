.class public final synthetic Ls21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/work/impl/WorkDatabase;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroidx/work/impl/WorkManagerImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;Landroidx/work/impl/WorkManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls21;->b:Landroidx/work/impl/WorkDatabase;

    iput-object p2, p0, Ls21;->c:Ljava/lang/String;

    iput-object p3, p0, Ls21;->d:Landroidx/work/impl/WorkManagerImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ls21;->c:Ljava/lang/String;

    iget-object v1, p0, Ls21;->d:Landroidx/work/impl/WorkManagerImpl;

    iget-object p0, p0, Ls21;->b:Landroidx/work/impl/WorkDatabase;

    invoke-static {p0, v0, v1}, Landroidx/work/impl/utils/CancelWorkRunnable;->e(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;Landroidx/work/impl/WorkManagerImpl;)V

    return-void
.end method
