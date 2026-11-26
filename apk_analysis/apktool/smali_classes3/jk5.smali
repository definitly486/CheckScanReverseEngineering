.class public final synthetic Ljk5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/navigationevent/compose/NavigationEventState;

.field public final synthetic c:Z

.field public final synthetic d:Lll3;

.field public final synthetic e:Lll3;

.field public final synthetic f:Z

.field public final synthetic g:Lll3;

.field public final synthetic h:Lll3;

.field public final synthetic i:I

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Landroidx/navigationevent/compose/NavigationEventState;ZLll3;Lll3;ZLll3;Lll3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljk5;->b:Landroidx/navigationevent/compose/NavigationEventState;

    iput-boolean p2, p0, Ljk5;->c:Z

    iput-object p3, p0, Ljk5;->d:Lll3;

    iput-object p4, p0, Ljk5;->e:Lll3;

    iput-boolean p5, p0, Ljk5;->f:Z

    iput-object p6, p0, Ljk5;->g:Lll3;

    iput-object p7, p0, Ljk5;->h:Lll3;

    iput p8, p0, Ljk5;->i:I

    iput p9, p0, Ljk5;->j:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v0, p0, Ljk5;->b:Landroidx/navigationevent/compose/NavigationEventState;

    iget-boolean v1, p0, Ljk5;->c:Z

    iget-object v2, p0, Ljk5;->d:Lll3;

    iget-object v3, p0, Ljk5;->e:Lll3;

    iget-boolean v4, p0, Ljk5;->f:Z

    iget-object v5, p0, Ljk5;->g:Lll3;

    iget-object v6, p0, Ljk5;->h:Lll3;

    iget v7, p0, Ljk5;->i:I

    iget v8, p0, Ljk5;->j:I

    invoke-static/range {v0 .. v10}, Landroidx/navigationevent/compose/NavigationEventHandlerKt;->n(Landroidx/navigationevent/compose/NavigationEventState;ZLll3;Lll3;ZLll3;Lll3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
