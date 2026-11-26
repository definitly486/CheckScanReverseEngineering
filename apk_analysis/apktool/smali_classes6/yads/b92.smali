.class public final Lyads/b92;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ln0;


# instance fields
.field public final a:Lyads/tq3;


# direct methods
.method public constructor <init>(Lyads/tq3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/b92;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyads/b92;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/b82;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/b82;
    .locals 75

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v8, Lyads/b82;

    iget-object v3, v0, Lyads/b92;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->H:Lcl4;

    const-string v4, "accessibility"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lyads/mr0;

    iget-object v3, v0, Lyads/b92;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->k1:Lcl4;

    const-string v4, "action"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lyads/xr0;

    iget-object v3, v0, Lyads/b92;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->q1:Lcl4;

    const-string v4, "action_animation"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/k11;

    if-nez v3, :cond_0

    sget-object v3, Lyads/e92;->a:Lyads/k11;

    :cond_0
    move-object v11, v3

    iget-object v3, v0, Lyads/b92;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->k1:Lcl4;

    const-string v4, "actions"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v12

    sget-object v3, Lyads/e92;->r:Lyads/m36;

    sget-object v13, Lyads/f11;->d:Lnl3;

    const-string v4, "alignment_horizontal"

    invoke-static {v1, v2, v4, v3, v13}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v14

    sget-object v3, Lyads/e92;->s:Lyads/m36;

    sget-object v15, Lyads/h11;->d:Lnl3;

    const-string v4, "alignment_vertical"

    invoke-static {v1, v2, v4, v3, v15}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v16

    sget-object v4, Lyads/w36;->d:Lyads/r36;

    sget-object v5, Lyads/bt4;->d:Lnl3;

    sget-object v6, Lyads/e92;->B:Lyads/l66;

    sget-object v7, Lyads/e92;->b:Lyads/xr2;

    const-string v3, "alpha"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    if-nez v3, :cond_1

    move-object/from16 v19, v7

    goto :goto_0

    :cond_1
    move-object/from16 v19, v3

    :goto_0
    iget-object v3, v0, Lyads/b92;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->t1:Lcl4;

    const-string v4, "animators"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v20

    sget-object v4, Lyads/w36;->a:Lyads/o36;

    sget-object v5, Lyads/bt4;->c:Lnl3;

    const-string v3, "auto_ellipsize"

    invoke-static {v1, v2, v3, v4, v5}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v21

    iget-object v3, v0, Lyads/b92;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->F1:Lcl4;

    const-string v6, "background"

    invoke-static {v1, v2, v6, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v22

    iget-object v3, v0, Lyads/b92;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->L1:Lcl4;

    const-string v6, "border"

    invoke-static {v1, v2, v6, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Lyads/f51;

    sget-object v7, Lyads/e92;->c:Lyads/xr2;

    sget-object v6, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "capture_focus_on_action"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    if-nez v3, :cond_2

    move-object/from16 v27, v7

    goto :goto_1

    :cond_2
    move-object/from16 v27, v3

    :goto_1
    sget-object v4, Lyads/w36;->b:Lyads/s36;

    sget-object v5, Lyads/bt4;->e:Lnl3;

    sget-object v6, Lyads/e92;->C:Lyads/l66;

    const/4 v7, 0x0

    const-string v3, "column_span"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v28

    iget-object v3, v0, Lyads/b92;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->O2:Lcl4;

    const-string v6, "disappear_actions"

    invoke-static {v1, v2, v6, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v29

    iget-object v3, v0, Lyads/b92;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->k1:Lcl4;

    const-string v6, "doubletap_actions"

    invoke-static {v1, v2, v6, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v30

    iget-object v3, v0, Lyads/b92;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->z8:Lcl4;

    const-string v6, "ellipsis"

    invoke-static {v1, v2, v6, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v31, v3

    check-cast v31, Lyads/r72;

    iget-object v3, v0, Lyads/b92;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->a3:Lcl4;

    const-string v6, "extensions"

    invoke-static {v1, v2, v6, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v32

    iget-object v3, v0, Lyads/b92;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->y3:Lcl4;

    const-string v6, "focus"

    invoke-static {v1, v2, v6, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v33, v3

    check-cast v33, Lyads/hf1;

    sget-object v3, Lyads/w36;->f:Lyads/p36;

    sget-object v6, Lyads/bt4;->a:Lnl3;

    const-string v7, "focused_text_color"

    invoke-static {v1, v2, v7, v3, v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v34

    sget-object v7, Lyads/w36;->c:Lyads/u36;

    move-object/from16 v35, v3

    const-string v3, "font_family"

    invoke-static {v1, v2, v3, v7}, Lyads/oq3;->b(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v36

    const-string v3, "font_feature_settings"

    invoke-static {v1, v2, v3, v7}, Lyads/oq3;->b(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v37

    move-object v3, v6

    sget-object v6, Lyads/e92;->D:Lyads/l66;

    move-object/from16 v38, v7

    sget-object v7, Lyads/e92;->d:Lyads/xr2;

    move-object/from16 v39, v3

    const-string v3, "font_size"

    move-object/from16 v74, v38

    move-object/from16 v38, v8

    move-object/from16 v8, v74

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    move-object/from16 v40, v4

    move-object/from16 v41, v5

    if-nez v3, :cond_3

    move-object/from16 v42, v7

    goto :goto_2

    :cond_3
    move-object/from16 v42, v3

    :goto_2
    sget-object v4, Lyads/e92;->t:Lyads/m36;

    sget-object v5, Lyads/g12;->d:Lnl3;

    sget-object v7, Lyads/e92;->e:Lyads/xr2;

    const-string v3, "font_size_unit"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, v26

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_4

    move-object/from16 v43, v7

    goto :goto_3

    :cond_4
    move-object/from16 v43, v3

    :goto_3
    sget-object v3, Lyads/w36;->h:Lyads/q36;

    const-string v4, "font_variation_settings"

    invoke-static {v1, v2, v4, v3}, Lyads/oq3;->b(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v44

    sget-object v3, Lyads/e92;->u:Lyads/m36;

    sget-object v4, Lyads/tf1;->d:Lnl3;

    const-string v5, "font_weight"

    invoke-static {v1, v2, v5, v3, v4}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v45

    sget-object v6, Lyads/e92;->E:Lyads/l66;

    const/4 v7, 0x0

    const-string v3, "font_weight_value"

    move-object/from16 v4, v40

    move-object/from16 v5, v41

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v40

    move-object/from16 v41, v4

    move-object/from16 v46, v5

    iget-object v3, v0, Lyads/b92;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->H3:Lcl4;

    const-string v4, "functions"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v47

    iget-object v3, v0, Lyads/b92;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->T6:Lcl4;

    const-string v4, "height"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/x02;

    if-nez v3, :cond_5

    sget-object v3, Lyads/e92;->f:Lyads/w02;

    :cond_5
    move-object/from16 v48, v3

    iget-object v3, v0, Lyads/b92;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->k1:Lcl4;

    const-string v4, "hover_end_actions"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v49

    iget-object v3, v0, Lyads/b92;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->k1:Lcl4;

    const-string v4, "hover_start_actions"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v50

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v51, v3

    check-cast v51, Ljava/lang/String;

    iget-object v3, v0, Lyads/b92;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->t8:Lcl4;

    const-string v4, "images"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v52

    iget-object v3, v0, Lyads/b92;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->J4:Lcl4;

    const-string v4, "layout_provider"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v53, v3

    check-cast v53, Lyads/to1;

    sget-object v7, Lyads/e92;->g:Lyads/xr2;

    const-string v3, "letter_spacing"

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v26

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_6

    move-object/from16 v17, v7

    goto :goto_4

    :cond_6
    move-object/from16 v17, v3

    :goto_4
    sget-object v6, Lyads/e92;->F:Lyads/l66;

    const/4 v7, 0x0

    const-string v3, "line_height"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, v41

    move-object/from16 v5, v46

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v18

    iget-object v3, v0, Lyads/b92;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->k1:Lcl4;

    const-string v6, "longtap_actions"

    invoke-static {v1, v2, v6, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v41

    iget-object v3, v0, Lyads/b92;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->X2:Lcl4;

    const-string v6, "margins"

    invoke-static {v1, v2, v6, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v46, v3

    check-cast v46, Lyads/yc1;

    sget-object v6, Lyads/e92;->G:Lyads/l66;

    const-string v3, "max_lines"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v54

    sget-object v6, Lyads/e92;->H:Lyads/l66;

    const-string v3, "min_hidden_lines"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v55

    iget-object v3, v0, Lyads/b92;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->X2:Lcl4;

    const-string v6, "paddings"

    invoke-static {v1, v2, v6, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v56, v3

    check-cast v56, Lyads/yc1;

    iget-object v3, v0, Lyads/b92;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->k1:Lcl4;

    const-string v6, "press_end_actions"

    invoke-static {v1, v2, v6, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v57

    iget-object v3, v0, Lyads/b92;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->k1:Lcl4;

    const-string v6, "press_start_actions"

    invoke-static {v1, v2, v6, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v58

    iget-object v3, v0, Lyads/b92;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->q8:Lcl4;

    const-string v6, "ranges"

    invoke-static {v1, v2, v6, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v59

    const-string v3, "reuse_id"

    invoke-static {v1, v2, v3, v8}, Lyads/oq3;->b(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v60

    sget-object v6, Lyads/e92;->I:Lyads/l66;

    const-string v3, "row_span"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v61

    sget-object v7, Lyads/e92;->h:Lyads/xr2;

    const-string v3, "selectable"

    move-object/from16 v4, v24

    move-object/from16 v5, v25

    move-object/from16 v6, v26

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_7

    move-object/from16 v26, v7

    goto :goto_5

    :cond_7
    move-object/from16 v26, v3

    :goto_5
    iget-object v3, v0, Lyads/b92;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->k1:Lcl4;

    const-string v4, "selected_actions"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v62

    sget-object v4, Lyads/e92;->v:Lyads/m36;

    sget-object v5, Lyads/bp1;->d:Lnl3;

    sget-object v7, Lyads/e92;->i:Lyads/xr2;

    const-string v3, "strike"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    move-object/from16 v63, v5

    if-nez v3, :cond_8

    move-object/from16 v64, v7

    goto :goto_6

    :cond_8
    move-object/from16 v64, v3

    :goto_6
    const-string v3, "text"

    invoke-static {v1, v2, v3, v8}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v8

    sget-object v4, Lyads/e92;->w:Lyads/m36;

    sget-object v7, Lyads/e92;->j:Lyads/xr2;

    const-string v3, "text_alignment_horizontal"

    move-object v5, v13

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_9

    move-object v13, v7

    goto :goto_7

    :cond_9
    move-object v13, v3

    :goto_7
    sget-object v4, Lyads/e92;->x:Lyads/m36;

    sget-object v7, Lyads/e92;->k:Lyads/xr2;

    const-string v3, "text_alignment_vertical"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v5, v15

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_a

    move-object v15, v7

    goto :goto_8

    :cond_a
    move-object v15, v3

    :goto_8
    sget-object v7, Lyads/e92;->l:Lyads/xr2;

    const-string v3, "text_color"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, v35

    move-object/from16 v5, v39

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_b

    move-object/from16 v35, v7

    goto :goto_9

    :cond_b
    move-object/from16 v35, v3

    :goto_9
    iget-object v3, v0, Lyads/b92;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->V7:Lcl4;

    const-string v4, "text_gradient"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v39, v3

    check-cast v39, Lyads/m82;

    iget-object v3, v0, Lyads/b92;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->H6:Lcl4;

    const-string v4, "text_shadow"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v65, v3

    check-cast v65, Lyads/xz1;

    sget-object v7, Lyads/e92;->m:Lyads/xr2;

    const-string v3, "tighten_width"

    move-object/from16 v4, v24

    move-object/from16 v5, v25

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_c

    move-object/from16 v24, v7

    goto :goto_a

    :cond_c
    move-object/from16 v24, v3

    :goto_a
    iget-object v3, v0, Lyads/b92;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->O8:Lcl4;

    const-string v4, "tooltips"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v25

    iget-object v3, v0, Lyads/b92;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->R8:Lcl4;

    const-string v4, "transform"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v66, v3

    check-cast v66, Lyads/bd2;

    iget-object v3, v0, Lyads/b92;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->U1:Lcl4;

    const-string v4, "transition_change"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v67, v3

    check-cast v67, Lyads/j61;

    iget-object v3, v0, Lyads/b92;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->z1:Lcl4;

    const-string v4, "transition_in"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v68, v3

    check-cast v68, Lyads/s21;

    iget-object v3, v0, Lyads/b92;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->z1:Lcl4;

    const-string v4, "transition_out"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v69, v3

    check-cast v69, Lyads/s21;

    sget-object v4, Lyads/pd2;->d:Lnl3;

    sget-object v5, Lyads/e92;->J:Lyads/st3;

    const-string v3, "transition_triggers"

    invoke-static/range {v1 .. v6}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lnl3;Lyads/st3;Lyads/l66;)Ljava/util/List;

    move-result-object v70

    sget-object v4, Lyads/e92;->y:Lyads/m36;

    sget-object v5, Lyads/a82;->d:Lnl3;

    sget-object v7, Lyads/e92;->n:Lyads/xr2;

    const-string v3, "truncate"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_d

    move-object/from16 v71, v7

    goto :goto_b

    :cond_d
    move-object/from16 v71, v3

    :goto_b
    sget-object v4, Lyads/e92;->z:Lyads/m36;

    sget-object v7, Lyads/e92;->o:Lyads/xr2;

    const-string v3, "underline"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, v63

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_e

    move-object/from16 v63, v7

    goto :goto_c

    :cond_e
    move-object/from16 v63, v3

    :goto_c
    iget-object v3, v0, Lyads/b92;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->U8:Lcl4;

    const-string v4, "variable_triggers"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v72

    iget-object v3, v0, Lyads/b92;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->a9:Lcl4;

    const-string v4, "variables"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v73

    sget-object v4, Lyads/e92;->A:Lyads/m36;

    sget-object v5, Lyads/ri2;->d:Lnl3;

    sget-object v7, Lyads/e92;->p:Lyads/xr2;

    const-string v3, "visibility"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_f

    goto :goto_d

    :cond_f
    move-object v7, v3

    :goto_d
    iget-object v3, v0, Lyads/b92;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->m9:Lcl4;

    const-string v4, "visibility_action"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/si2;

    iget-object v4, v0, Lyads/b92;->a:Lyads/tq3;

    iget-object v4, v4, Lyads/tq3;->m9:Lcl4;

    const-string v5, "visibility_actions"

    invoke-static {v1, v2, v5, v4}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v4

    iget-object v0, v0, Lyads/b92;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->T6:Lcl4;

    const-string v5, "width"

    invoke-static {v1, v2, v5, v0}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/x02;

    if-nez v0, :cond_10

    sget-object v0, Lyads/e92;->q:Lyads/v02;

    :cond_10
    move-object v1, v9

    move-object v2, v10

    move-object v5, v14

    move-object/from16 v6, v16

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    move-object/from16 v14, v29

    move-object/from16 v16, v31

    move-object/from16 v21, v37

    move-object/from16 v22, v42

    move-object/from16 v37, v46

    move-object/from16 v29, v49

    move-object/from16 v31, v51

    move-object/from16 v42, v58

    move-object/from16 v58, v67

    move-object/from16 v67, v3

    move-object/from16 v49, v8

    move-object v3, v11

    move-object/from16 v51, v15

    move-object/from16 v8, v20

    move-object/from16 v11, v23

    move-object/from16 v46, v26

    move-object/from16 v15, v30

    move-object/from16 v20, v36

    move-object/from16 v26, v40

    move-object/from16 v36, v41

    move-object/from16 v23, v43

    move-object/from16 v30, v50

    move-object/from16 v40, v56

    move-object/from16 v41, v57

    move-object/from16 v43, v59

    move-object/from16 v57, v66

    move-object/from16 v59, v68

    move-object/from16 v68, v4

    move-object/from16 v66, v7

    move-object v4, v12

    move-object/from16 v50, v13

    move-object/from16 v7, v19

    move-object/from16 v56, v25

    move-object/from16 v12, v27

    move-object/from16 v13, v28

    move-object/from16 v19, v34

    move-object/from16 v25, v45

    move-object/from16 v27, v47

    move-object/from16 v28, v48

    move-object/from16 v45, v61

    move-object/from16 v47, v62

    move-object/from16 v48, v64

    move-object/from16 v61, v70

    move-object/from16 v62, v71

    move-object/from16 v64, v72

    move-object/from16 v34, v17

    move-object/from16 v17, v32

    move-object/from16 v32, v52

    move-object/from16 v52, v35

    move-object/from16 v35, v18

    move-object/from16 v18, v33

    move-object/from16 v33, v53

    move-object/from16 v53, v39

    move-object/from16 v39, v55

    move-object/from16 v55, v24

    move-object/from16 v24, v44

    move-object/from16 v44, v60

    move-object/from16 v60, v69

    move-object/from16 v69, v0

    move-object/from16 v0, v38

    move-object/from16 v38, v54

    move-object/from16 v54, v65

    move-object/from16 v65, v73

    invoke-direct/range {v0 .. v69}, Lyads/b82;-><init>(Lyads/mr0;Lyads/xr0;Lyads/k11;Ljava/util/List;Lyads/as2;Lyads/as2;Lyads/as2;Ljava/util/List;Lyads/as2;Ljava/util/List;Lyads/f51;Lyads/as2;Lyads/as2;Ljava/util/List;Ljava/util/List;Lyads/r72;Ljava/util/List;Lyads/hf1;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Ljava/util/List;Lyads/x02;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lyads/to1;Lyads/as2;Lyads/as2;Ljava/util/List;Lyads/yc1;Lyads/as2;Lyads/as2;Lyads/yc1;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyads/as2;Lyads/as2;Lyads/as2;Ljava/util/List;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/m82;Lyads/xz1;Lyads/as2;Ljava/util/List;Lyads/bd2;Lyads/j61;Lyads/s21;Lyads/s21;Ljava/util/List;Lyads/as2;Lyads/as2;Ljava/util/List;Ljava/util/List;Lyads/as2;Lyads/si2;Ljava/util/List;Lyads/x02;)V

    return-object v0
.end method
