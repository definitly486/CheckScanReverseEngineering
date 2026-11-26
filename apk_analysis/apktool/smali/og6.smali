.class public final synthetic Log6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Landroid/content/pm/ResolveInfo;

.field public final synthetic d:Z

.field public final synthetic e:Ljava/lang/CharSequence;

.field public final synthetic f:J


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;ZLjava/lang/CharSequence;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Log6;->b:Landroid/content/Context;

    iput-object p2, p0, Log6;->c:Landroid/content/pm/ResolveInfo;

    iput-boolean p3, p0, Log6;->d:Z

    iput-object p4, p0, Log6;->e:Ljava/lang/CharSequence;

    iput-wide p5, p0, Log6;->f:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-wide v4, p0, Log6;->f:J

    move-object v6, p1

    check-cast v6, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

    iget-object v0, p0, Log6;->b:Landroid/content/Context;

    iget-object v1, p0, Log6;->c:Landroid/content/pm/ResolveInfo;

    iget-boolean v2, p0, Log6;->d:Z

    iget-object v3, p0, Log6;->e:Ljava/lang/CharSequence;

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/text/contextmenu/ProcessText_androidKt;->a(Landroid/content/Context;Landroid/content/pm/ResolveInfo;ZLjava/lang/CharSequence;JLandroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;)Lj59;

    move-result-object p0

    return-object p0
.end method
