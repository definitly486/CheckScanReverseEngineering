.class public final synthetic Lgr4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:J

.field public final synthetic c:Landroidx/compose/material3/tokens/TypographyKeyTokens;

.field public final synthetic d:Lbm3;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(JLandroidx/compose/material3/tokens/TypographyKeyTokens;Lbm3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lgr4;->b:J

    iput-object p3, p0, Lgr4;->c:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    iput-object p4, p0, Lgr4;->d:Lbm3;

    iput p5, p0, Lgr4;->e:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-wide v0, p0, Lgr4;->b:J

    iget-object v2, p0, Lgr4;->c:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    iget-object v3, p0, Lgr4;->d:Lbm3;

    iget v4, p0, Lgr4;->e:I

    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/ListItemKt;->e(JLandroidx/compose/material3/tokens/TypographyKeyTokens;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
