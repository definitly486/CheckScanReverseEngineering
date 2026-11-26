.class public final Lv94;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lp94$c;

.field public final synthetic c:Z

.field public final synthetic d:Lp94;


# direct methods
.method public constructor <init>(Lp94;Lp94$c;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv94;->d:Lp94;

    iput-object p2, p0, Lv94;->b:Lp94$c;

    iput-boolean p3, p0, Lv94;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lv94;->d:Lp94;

    iget-object v0, v0, Lp94;->v:Lp94$b;

    iget-object v1, p0, Lv94;->b:Lp94$c;

    iget-boolean p0, p0, Lv94;->c:Z

    invoke-virtual {v0, v1, p0}, Lu1;->o(Ljava/lang/Object;Z)V

    return-void
.end method
