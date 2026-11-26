.class public final Lja1;
.super Lum;
.source "SourceFile"


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lka1;


# direct methods
.method public constructor <init>(Lka1;ZLid2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lja1;->b:Lka1;

    iput-boolean p2, p0, Lja1;->a:Z

    return-void
.end method


# virtual methods
.method public final onAnimationEnd()V
    .locals 1

    iget-boolean v0, p0, Lja1;->a:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lja1;->b:Lka1;

    const/4 v0, 0x0

    iput-object v0, p0, Lka1;->o:Lsn1;

    :cond_0
    return-void
.end method
