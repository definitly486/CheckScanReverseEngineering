.class public final Lyads/hc6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/if6;


# instance fields
.field public final a:Lyads/t96;

.field public final b:Lyads/ff6;


# direct methods
.method public constructor <init>(Lyads/t96;Lyads/ff6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/hc6;->a:Lyads/t96;

    iput-object p2, p0, Lyads/hc6;->b:Lyads/ff6;

    return-void
.end method


# virtual methods
.method public final a(Lyads/gb6;)V
    .locals 2

    iget-object p1, p1, Lyads/gb6;->a:Lyads/fb6;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    invoke-static {}, Lme0;->e()V

    return-void

    :pswitch_0
    const/16 p1, 0x386

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x385

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x193

    goto :goto_0

    :pswitch_3
    const/16 p1, 0x191

    goto :goto_0

    :pswitch_4
    const/16 p1, 0x190

    goto :goto_0

    :pswitch_5
    const/16 p1, 0x384

    goto :goto_0

    :pswitch_6
    const/16 p1, 0x192

    goto :goto_0

    :pswitch_7
    const/16 p1, 0x195

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[ERRORCODE]"

    invoke-static {v0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lyads/hc6;->b:Lyads/ff6;

    iget-object p0, p0, Lyads/hc6;->a:Lyads/t96;

    const-string v1, "error"

    invoke-virtual {p0}, Lyads/t96;->a()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    iget-object v0, v0, Lyads/ff6;->a:Lyads/hd6;

    invoke-virtual {v0, p0, p1}, Lyads/hd6;->a(Ljava/util/List;Ljava/util/Map;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lyads/hc6;->b:Lyads/ff6;

    iget-object p0, p0, Lyads/hc6;->a:Lyads/t96;

    const-string v1, "render_impression"

    invoke-virtual {v0, p0, v1}, Lyads/ff6;->a(Lyads/ef6;Ljava/lang/String;)V

    return-void
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lyads/hc6;->a:Lyads/t96;

    new-instance v1, Lyads/da6;

    invoke-direct {v1, v0}, Lyads/da6;-><init>(Lyads/t96;)V

    iget-object p0, p0, Lyads/hc6;->b:Lyads/ff6;

    const-string v0, "renderingStart"

    invoke-virtual {p0, v1, v0}, Lyads/ff6;->a(Lyads/ef6;Ljava/lang/String;)V

    return-void
.end method

.method public final n()V
    .locals 2

    iget-object v0, p0, Lyads/hc6;->b:Lyads/ff6;

    iget-object p0, p0, Lyads/hc6;->a:Lyads/t96;

    const-string v1, "impression"

    invoke-virtual {v0, p0, v1}, Lyads/ff6;->a(Lyads/ef6;Ljava/lang/String;)V

    return-void
.end method
