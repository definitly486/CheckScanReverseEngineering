.class public final synthetic Lpn3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lll3;

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lll3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpn3;->b:Ljava/lang/String;

    iput-object p2, p0, Lpn3;->c:Ljava/lang/String;

    iput-object p3, p0, Lpn3;->d:Ljava/lang/String;

    iput-object p4, p0, Lpn3;->e:Ljava/lang/String;

    iput-object p5, p0, Lpn3;->f:Lll3;

    iput p6, p0, Lpn3;->g:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    iget p1, p0, Lpn3;->g:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v6

    iget-object v0, p0, Lpn3;->b:Ljava/lang/String;

    iget-object v1, p0, Lpn3;->c:Ljava/lang/String;

    iget-object v2, p0, Lpn3;->d:Ljava/lang/String;

    iget-object v3, p0, Lpn3;->e:Ljava/lang/String;

    iget-object v4, p0, Lpn3;->f:Lll3;

    invoke-static/range {v0 .. v6}, Lsn3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lll3;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
