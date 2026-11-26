.class public final synthetic Lkk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Lr07;

.field public final synthetic c:Lll3;


# direct methods
.method public synthetic constructor <init>(Lr07;Lll3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkk;->b:Lr07;

    iput-object p2, p0, Lkk;->c:Lll3;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkk;->b:Lr07;

    iget-object p0, p0, Lkk;->c:Lll3;

    invoke-static {v0, p0}, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->a(Lr07;Lll3;)Lj59;

    move-result-object p0

    return-object p0
.end method
