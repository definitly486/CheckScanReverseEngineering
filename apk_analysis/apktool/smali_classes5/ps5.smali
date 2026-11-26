.class public final Lps5;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lfm9;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lps5;->f:I

    .line 10
    iput-object p1, p0, Lps5;->g:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lgh4;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lts5;Lms5;)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lps5;->f:I

    iput-object p2, p0, Lps5;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lps5;->f:I

    iget-object p0, p0, Lps5;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lj59;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lfm9;

    iget-object p0, p0, Lfm9;->a:Lhfa;

    iget-object p0, p0, Lhfa;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "fsa_event_key"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, La57;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lms5;

    invoke-static {p0, p1}, Lts5;->e(Lms5;La57;)Lus5;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
