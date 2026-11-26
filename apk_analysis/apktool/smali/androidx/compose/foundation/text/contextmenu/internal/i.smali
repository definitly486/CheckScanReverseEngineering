.class public final synthetic Landroidx/compose/foundation/text/contextmenu/internal/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroid/app/RemoteAction;


# direct methods
.method public synthetic constructor <init>(Landroid/app/RemoteAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/contextmenu/internal/i;->b:Landroid/app/RemoteAction;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/contextmenu/internal/i;->b:Landroid/app/RemoteAction;

    invoke-static {p0}, Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;->c(Landroid/app/RemoteAction;)Lj59;

    move-result-object p0

    return-object p0
.end method
