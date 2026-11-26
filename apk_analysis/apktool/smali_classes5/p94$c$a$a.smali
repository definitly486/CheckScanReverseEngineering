.class public final Lp94$c$a$a;
.super Laj3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp94$c$a;->i(Ldm1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ldm1;

.field public final synthetic b:Lp94$c$a;


# direct methods
.method public constructor <init>(Lp94$c$a;Ldm1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp94$c$a$a;->b:Lp94$c$a;

    iput-object p2, p0, Lp94$c$a$a;->a:Ldm1;

    return-void
.end method


# virtual methods
.method public final c(Lh88;Ldm1$a;Lla5;)V
    .locals 2

    iget-object v0, p0, Lp94$c$a$a;->b:Lp94$c$a;

    iget-object v0, v0, Lp94$c$a;->c:Lp94$c;

    iget-object v0, v0, Lp94$c;->b:Lpy0;

    invoke-virtual {p1}, Lh88;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lpy0;->c:Ltv4;

    invoke-interface {v0}, Ltv4;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lpy0;->d:Ltv4;

    invoke-interface {v0}, Ltv4;->a()V

    :goto_0
    iget-object p0, p0, Lp94$c$a$a;->a:Ldm1;

    invoke-interface {p0, p1, p2, p3}, Ldm1;->c(Lh88;Ldm1$a;Lla5;)V

    return-void
.end method
