.class public final Lyads/rf0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lyads/l54;

.field public final c:Lyads/q64;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/l54;Lyads/q64;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/rf0;->a:Landroid/content/Context;

    iput-object p2, p0, Lyads/rf0;->b:Lyads/l54;

    iput-object p3, p0, Lyads/rf0;->c:Lyads/q64;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Boolean;)Lyads/rg0;
    .locals 8

    .line 253
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lyads/rg0;

    iget-object p0, p0, Lyads/rf0;->a:Landroid/content/Context;

    sget p1, Lcom/yandex/mobile/ads/R$string;->debug_panel_yes:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lyads/rg0;-><init>(Ljava/lang/String;ILjava/lang/Integer;II)V

    return-object v1

    .line 254
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Lyads/rg0;

    iget-object p0, p0, Lyads/rf0;->a:Landroid/content/Context;

    sget p1, Lcom/yandex/mobile/ads/R$string;->debug_panel_no:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lyads/rg0;-><init>(Ljava/lang/String;ILjava/lang/Integer;II)V

    return-object v1

    :cond_1
    if-nez p1, :cond_2

    .line 255
    new-instance v2, Lyads/rg0;

    iget-object p0, p0, Lyads/rf0;->a:Landroid/content/Context;

    sget p1, Lcom/yandex/mobile/ads/R$string;->debug_panel_no_value_set:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lyads/rg0;-><init>(Ljava/lang/String;ILjava/lang/Integer;II)V

    return-object v2

    :cond_2
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(Ljava/util/List;Lyads/le0;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, Lyads/le0;->a()Lyads/ke0;

    move-result-object v1

    instance-of v1, v1, Lyads/je0;

    if-eqz v1, :cond_0

    new-instance v2, Lyads/rg0;

    iget-object v1, v0, Lyads/rf0;->a:Landroid/content/Context;

    sget v3, Lcom/yandex/mobile/ads/R$string;->debug_panel_not_integrated:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lyads/rg0;-><init>(Ljava/lang/String;ILjava/lang/Integer;II)V

    :goto_0
    move-object v7, v2

    goto :goto_2

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lyads/le0;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Lyads/rg0;

    invoke-virtual/range {p2 .. p2}, Lyads/le0;->f()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "SDK "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lyads/rg0;-><init>(Ljava/lang/String;ILjava/lang/Integer;II)V

    goto :goto_0

    :cond_2
    :goto_1
    new-instance v3, Lyads/rg0;

    iget-object v1, v0, Lyads/rf0;->a:Landroid/content/Context;

    sget v2, Lcom/yandex/mobile/ads/R$string;->debug_panel_sdk_undefined:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/16 v8, 0xe

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lyads/rg0;-><init>(Ljava/lang/String;ILjava/lang/Integer;II)V

    move-object v7, v3

    :goto_2
    invoke-virtual/range {p2 .. p2}, Lyads/le0;->a()Lyads/ke0;

    move-result-object v1

    instance-of v2, v1, Lyads/ie0;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    check-cast v1, Lyads/ie0;

    goto :goto_3

    :cond_3
    move-object v1, v3

    :goto_3
    if-eqz v1, :cond_4

    sget-object v3, Lyads/o64;->b:Lyads/o64;

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lyads/le0;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p2 .. p2}, Lyads/le0;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Adapter "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual/range {p2 .. p2}, Lyads/le0;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p2 .. p2}, Lyads/le0;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Latest "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lyads/le0;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-static {v2}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_4

    :cond_7
    iget-object v2, v0, Lyads/rf0;->b:Lyads/l54;

    invoke-virtual/range {p2 .. p2}, Lyads/le0;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lyads/le0;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lyads/l54;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    sget v2, Lcom/yandex/mobile/ads/R$attr;->debug_panel_color_orange:I

    goto :goto_5

    :cond_9
    :goto_4
    sget v2, Lcom/yandex/mobile/ads/R$attr;->debug_panel_label_secondary:I

    :goto_5
    invoke-virtual/range {p2 .. p2}, Lyads/le0;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lyads/le0;->d()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lyads/af0;

    invoke-direct {v8, v1, v2}, Lyads/af0;-><init>(Ljava/lang/String;I)V

    invoke-virtual/range {p2 .. p2}, Lyads/le0;->f()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v0, Lyads/rf0;->c:Lyads/q64;

    invoke-virtual {v0, v3}, Lyads/q64;->a(Lyads/o64;)Ljava/lang/String;

    move-result-object v9

    new-instance v4, Lyads/rh0;

    const/4 v14, 0x0

    const/16 v16, 0x3e0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v4 .. v16}, Lyads/rh0;-><init>(Ljava/lang/String;Ljava/lang/String;Lyads/rg0;Lyads/af0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/List;Lyads/me0;Ljava/lang/String;I)V

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
