.class public final Lji8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/androidadvance/topsnackbar/c;


# direct methods
.method public constructor <init>(Lcom/androidadvance/topsnackbar/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lji8;->b:Lcom/androidadvance/topsnackbar/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lji8;->b:Lcom/androidadvance/topsnackbar/c;

    iget-object p0, p0, Lcom/androidadvance/topsnackbar/c;->a:Lcom/androidadvance/topsnackbar/TSnackbar;

    sget-object v0, Lcom/androidadvance/topsnackbar/TSnackbar;->e:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/androidadvance/topsnackbar/TSnackbar;->d()V

    return-void
.end method
