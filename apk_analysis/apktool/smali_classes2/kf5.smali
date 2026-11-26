.class public final synthetic Lkf5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:J

.field public final synthetic c:[F

.field public final synthetic d:Lp07;

.field public final synthetic e:Lo07;


# direct methods
.method public synthetic constructor <init>(J[FLp07;Lo07;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkf5;->b:J

    iput-object p3, p0, Lkf5;->c:[F

    iput-object p4, p0, Lkf5;->d:Lp07;

    iput-object p5, p0, Lkf5;->e:Lo07;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v4, p0, Lkf5;->e:Lo07;

    move-object v5, p1

    check-cast v5, Landroidx/compose/ui/text/ParagraphInfo;

    iget-wide v0, p0, Lkf5;->b:J

    iget-object v2, p0, Lkf5;->c:[F

    iget-object v3, p0, Lkf5;->d:Lp07;

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/text/MultiParagraph;->b(J[FLp07;Lo07;Landroidx/compose/ui/text/ParagraphInfo;)Lj59;

    move-result-object p0

    return-object p0
.end method
