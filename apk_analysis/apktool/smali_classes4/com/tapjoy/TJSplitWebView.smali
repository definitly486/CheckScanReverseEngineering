.class public Lcom/tapjoy/TJSplitWebView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public final A:I

.field public B:Z

.field public C:I

.field public a:Lcom/tapjoy/TJWebView;

.field public b:Lcom/tapjoy/h0;

.field public c:Lcom/tapjoy/h0;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Landroid/net/Uri;

.field public h:Ljava/util/HashSet;

.field public final i:Lorg/json/JSONObject;

.field public j:Lcom/tapjoy/TJAdUnitJSBridge;

.field public final k:Landroid/content/Context;

.field public final l:Ljava/lang/Boolean;

.field public final m:Z

.field public n:Landroid/widget/RelativeLayout;

.field public o:Landroid/widget/FrameLayout;

.field public p:Landroid/widget/ProgressBar;

.field public q:Landroid/widget/TextView;

.field public r:Lcom/tapjoy/TJImageButton;

.field public s:Lcom/tapjoy/TJImageButton;

.field public final t:Ljava/lang/String;

.field public u:Z

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public final y:I

.field public final z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;ILcom/tapjoy/TJAdUnitJSBridge;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x2

    iput v3, v0, Lcom/tapjoy/TJSplitWebView;->y:I

    const/16 v4, 0x28

    iput v4, v0, Lcom/tapjoy/TJSplitWebView;->z:I

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/tapjoy/TJSplitWebView;->B:Z

    const/4 v6, -0x1

    iput v6, v0, Lcom/tapjoy/TJSplitWebView;->C:I

    move-object/from16 v7, p4

    iput-object v7, v0, Lcom/tapjoy/TJSplitWebView;->j:Lcom/tapjoy/TJAdUnitJSBridge;

    iput-object v1, v0, Lcom/tapjoy/TJSplitWebView;->k:Landroid/content/Context;

    move/from16 v7, p3

    iput v7, v0, Lcom/tapjoy/TJSplitWebView;->A:I

    const-string v7, "splitViewLayout"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "splitViewExitHosts"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    const-string v9, "errorDialogStrings"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "urlForExternalOpen"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/tapjoy/TJSplitWebView;->t:Ljava/lang/String;

    const-string v10, "animation"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    iput-object v10, v0, Lcom/tapjoy/TJSplitWebView;->i:Lorg/json/JSONObject;

    invoke-virtual {v0, v7}, Lcom/tapjoy/TJSplitWebView;->setLayoutOption(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v8}, Lcom/tapjoy/TJSplitWebView;->setExitHosts(Lorg/json/JSONArray;)V

    invoke-virtual {v0, v9}, Lcom/tapjoy/TJSplitWebView;->setErrorDialog(Lorg/json/JSONObject;)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v8, Lcom/tapjoy/TJWebView;

    invoke-direct {v8, v1}, Lcom/tapjoy/TJWebView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lcom/tapjoy/TJSplitWebView;->a:Lcom/tapjoy/TJWebView;

    invoke-static {}, Lcom/tapjoy/TapjoyUtil;->generateViewId()I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/view/View;->setId(I)V

    iget-object v1, v0, Lcom/tapjoy/TJSplitWebView;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, v0, Lcom/tapjoy/TJSplitWebView;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    iget-object v1, v0, Lcom/tapjoy/TJSplitWebView;->a:Lcom/tapjoy/TJWebView;

    new-instance v9, Lcom/tapjoy/i0;

    invoke-direct {v9, v0}, Lcom/tapjoy/i0;-><init>(Lcom/tapjoy/TJSplitWebView;)V

    invoke-virtual {v1, v9}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const-string v1, "showToolBar"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/TJSplitWebView;->l:Ljava/lang/Boolean;

    const-string v1, "showURL"

    invoke-virtual {v2, v1, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/tapjoy/TJSplitWebView;->m:Z

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move v1, v5

    :goto_0
    const/4 v9, 0x4

    if-ge v1, v9, :cond_0

    const/4 v9, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "appearance"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "#bbbbbb"

    const-string v9, "#ffffff"

    const-string v10, "#dddddd"

    const-string v12, "#5d95ff"

    const-string v13, ""

    const-string v15, "semibold"

    const-string v8, "#000000"

    if-eqz v1, :cond_9

    const-string v6, "toolbar"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v3, "height"

    const-string v14, "show"

    if-eqz v6, :cond_1

    invoke-virtual {v6, v14, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v0, Lcom/tapjoy/TJSplitWebView;->l:Ljava/lang/Boolean;

    const-string v5, "background"

    invoke-virtual {v6, v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "boundary"

    invoke-virtual {v6, v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/tapjoy/TJSplitWebView;->z:I

    :cond_1
    const-string v4, "title"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "foreground"

    if-eqz v4, :cond_2

    invoke-virtual {v4, v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v13, "text"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 p4, v6

    const-string v6, "size"

    move-object/from16 v17, v7

    const/16 v7, 0xe

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "weight"

    invoke-virtual {v4, v7, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v7, "allowTap"

    move/from16 p3, v6

    const/4 v6, 0x0

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    move/from16 v18, v7

    const-string v7, "showLink"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v7, p4

    move-object/from16 v19, v15

    move/from16 v15, p3

    goto :goto_1

    :cond_2
    move-object/from16 v17, v7

    const/4 v6, 0x0

    const/16 v7, 0xe

    move v4, v6

    move/from16 v18, v4

    move-object/from16 v19, v15

    move v15, v7

    move-object v7, v12

    :goto_1
    const-string v6, "closeButton"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    move/from16 p4, v4

    const-string v4, "edgeOffset"

    if-eqz v6, :cond_6

    invoke-virtual {v6, v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v21, v7

    const/16 v7, 0xa

    invoke-virtual {v6, v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v22

    const-string v7, "insets"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_4

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v23, v9

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v7, v9, :cond_5

    const/4 v9, -0x1

    invoke-virtual {v6, v7, v9}, Lorg/json/JSONArray;->optInt(II)I

    move-result v16

    if-ltz v16, :cond_3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v23, v9

    :cond_5
    move/from16 v7, v22

    goto :goto_3

    :cond_6
    move-object/from16 v21, v7

    move-object/from16 v23, v9

    move-object/from16 v20, v8

    const/16 v7, 0xa

    :goto_3
    const-string v6, "progressBar"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6, v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v5, 0x2

    invoke-virtual {v6, v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/tapjoy/TJSplitWebView;->y:I

    :cond_7
    const-string v3, "navigationButtons"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_8

    invoke-virtual {v1, v14, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, "foregroundActive"

    invoke-virtual {v1, v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "foregroundInactive"

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xa

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    move-object v14, v2

    move-object v2, v10

    move-object v4, v12

    move-object v5, v13

    move v6, v15

    move-object/from16 v9, v20

    move-object/from16 p1, v23

    move v15, v1

    move v12, v3

    move v10, v7

    move-object v13, v8

    move/from16 v7, v18

    move-object/from16 v3, v21

    :goto_4
    move/from16 v8, p4

    goto :goto_5

    :cond_8
    const/16 v5, 0xa

    move-object v14, v2

    move-object v2, v10

    move-object v4, v12

    move v6, v15

    move-object/from16 v9, v20

    move-object/from16 p1, v23

    move v12, v3

    move v15, v5

    move v10, v7

    move-object v5, v13

    move/from16 v7, v18

    move-object/from16 v3, v21

    move-object v13, v8

    goto :goto_4

    :cond_9
    move-object/from16 v17, v7

    const/4 v3, 0x1

    const/16 v5, 0xa

    const/16 v7, 0xe

    move-object v14, v2

    move v6, v7

    move-object/from16 p1, v9

    move-object v2, v10

    move-object v4, v12

    move-object/from16 v19, v15

    const/4 v7, 0x0

    move v12, v3

    move v10, v5

    move v15, v10

    move-object v9, v8

    move-object v3, v4

    move-object v5, v13

    move-object v13, v9

    const/4 v8, 0x0

    :goto_5
    iget-object v1, v0, Lcom/tapjoy/TJSplitWebView;->l:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    move-object v1, v2

    iget v2, v0, Lcom/tapjoy/TJSplitWebView;->z:I

    move-object/from16 v25, v1

    move-object/from16 v26, v4

    move-object v4, v5

    move v5, v6

    move-object/from16 v24, v17

    move-object/from16 v6, v19

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v15}, Lcom/tapjoy/TJSplitWebView;->addToolbar(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;ILjava/util/List;ZLjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJSplitWebView;->addLineBreak(Ljava/lang/String;)V

    move-object/from16 v12, v26

    invoke-virtual {v0, v12}, Lcom/tapjoy/TJSplitWebView;->addProgressBar(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/tapjoy/TJSplitWebView;->a:Lcom/tapjoy/TJWebView;

    new-instance v2, Lcom/tapjoy/f0;

    invoke-direct {v2, v0}, Lcom/tapjoy/f0;-><init>(Lcom/tapjoy/TJSplitWebView;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto :goto_6

    :cond_a
    move-object/from16 v24, v17

    :goto_6
    iget-object v1, v0, Lcom/tapjoy/TJSplitWebView;->a:Lcom/tapjoy/TJWebView;

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Lcom/tapjoy/TJSplitWebView;->b()V

    return-void
.end method

.method public static synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 337
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method


# virtual methods
.method public final synthetic a()V
    .locals 8

    .line 338
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 339
    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 340
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 341
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int v2, v1, v0

    int-to-double v2, v2

    int-to-double v4, v1

    const-wide v6, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v4, v6

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 342
    :goto_0
    iget-boolean v3, p0, Lcom/tapjoy/TJSplitWebView;->B:Z

    if-ne v2, v3, :cond_2

    iget v3, p0, Lcom/tapjoy/TJSplitWebView;->C:I

    sub-int/2addr v3, v0

    .line 343
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x32

    if-le v3, v4, :cond_1

    goto :goto_1

    :cond_1
    return-void

    .line 344
    :cond_2
    :goto_1
    iput-boolean v2, p0, Lcom/tapjoy/TJSplitWebView;->B:Z

    .line 345
    iput v0, p0, Lcom/tapjoy/TJSplitWebView;->C:I

    .line 346
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Keyboard visibility changed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/tapjoy/TJSplitWebView;->B:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", visible height: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    if-eqz v2, :cond_3

    move v1, v0

    :cond_3
    invoke-virtual {p0, v3, v1}, Lcom/tapjoy/TJSplitWebView;->a(II)V

    return-void
.end method

.method public final a(II)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-gt v1, v2, :cond_0

    iget-object v3, v0, Lcom/tapjoy/TJSplitWebView;->b:Lcom/tapjoy/h0;

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/tapjoy/TJSplitWebView;->c:Lcom/tapjoy/h0;

    :goto_0
    sget-object v4, Lcom/tapjoy/TJDeviceUtils;->INSTANCE:Lcom/tapjoy/TJDeviceUtils;

    iget-object v5, v0, Lcom/tapjoy/TJSplitWebView;->k:Landroid/content/Context;

    invoke-virtual {v4, v5, v1, v2}, Lcom/tapjoy/TJDeviceUtils;->getScreenRotation(Landroid/content/Context;II)I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/tapjoy/TJDeviceUtils;->getDensity(Landroid/content/Context;)F

    move-result v4

    if-eqz v5, :cond_3

    const/16 v7, 0x5a

    if-eq v5, v7, :cond_2

    const/16 v7, 0x10e

    if-eq v5, v7, :cond_1

    const/4 v5, 0x0

    :goto_1
    const/4 v7, 0x0

    :goto_2
    const/4 v8, 0x0

    goto :goto_3

    :cond_1
    iget v5, v0, Lcom/tapjoy/TJSplitWebView;->A:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    float-to-int v5, v5

    move v8, v5

    const/4 v5, 0x0

    const/4 v7, 0x0

    goto :goto_3

    :cond_2
    iget v5, v0, Lcom/tapjoy/TJSplitWebView;->A:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    float-to-int v5, v5

    move v7, v5

    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    iget v5, v0, Lcom/tapjoy/TJSplitWebView;->A:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    float-to-int v5, v5

    goto :goto_1

    :goto_3
    const/4 v9, 0x4

    if-nez v3, :cond_4

    iget-object v0, v0, Lcom/tapjoy/TJSplitWebView;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_4
    int-to-double v10, v1

    iget-wide v12, v3, Lcom/tapjoy/h0;->a:D

    mul-double/2addr v12, v10

    double-to-int v12, v12

    int-to-double v13, v2

    move-wide/from16 v16, v10

    iget-wide v9, v3, Lcom/tapjoy/h0;->b:D

    mul-double/2addr v9, v13

    double-to-int v9, v9

    if-eqz v12, :cond_a

    if-nez v9, :cond_5

    goto/16 :goto_5

    :cond_5
    iget-wide v10, v3, Lcom/tapjoy/h0;->c:D

    mul-double v10, v10, v16

    double-to-int v10, v10

    move/from16 v16, v7

    iget-wide v6, v3, Lcom/tapjoy/h0;->d:D

    mul-double/2addr v13, v6

    double-to-int v6, v13

    sub-int/2addr v1, v12

    sub-int/2addr v1, v10

    sub-int/2addr v2, v9

    sub-int/2addr v2, v6

    iget-object v7, v0, Lcom/tapjoy/TJSplitWebView;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    iput v12, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v9, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v9, v0, Lcom/tapjoy/TJSplitWebView;->l:Ljava/lang/Boolean;

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_6

    iget v9, v0, Lcom/tapjoy/TJSplitWebView;->z:I

    int-to-float v9, v9

    mul-float/2addr v9, v4

    float-to-int v9, v9

    iget-object v13, v0, Lcom/tapjoy/TJSplitWebView;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v13, v9

    iget-object v9, v0, Lcom/tapjoy/TJSplitWebView;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    add-int/2addr v10, v8

    add-int v8, v6, v5

    add-int v1, v1, v16

    invoke-virtual {v9, v10, v8, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v8, v0, Lcom/tapjoy/TJSplitWebView;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/2addr v6, v13

    add-int/2addr v6, v5

    invoke-virtual {v7, v10, v6, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, v0, Lcom/tapjoy/TJSplitWebView;->y:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    float-to-int v4, v6

    invoke-direct {v5, v12, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v4, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v6, v0, Lcom/tapjoy/TJSplitWebView;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-virtual {v5, v10, v4, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v1, v0, Lcom/tapjoy/TJSplitWebView;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/tapjoy/TJSplitWebView;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_6
    add-int/2addr v10, v8

    add-int/2addr v6, v5

    add-int v1, v1, v16

    invoke-virtual {v7, v10, v6, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_4
    iget-object v1, v0, Lcom/tapjoy/TJSplitWebView;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {v1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/tapjoy/TJSplitWebView;->a:Lcom/tapjoy/TJWebView;

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    iget v1, v3, Lcom/tapjoy/h0;->e:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    const/4 v3, 0x0

    if-lez v2, :cond_8

    const/16 v2, 0x8

    new-array v2, v2, [F

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v4

    iget-object v4, v0, Lcom/tapjoy/TJSplitWebView;->l:Ljava/lang/Boolean;

    const/4 v5, 0x1

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v2, v0, Lcom/tapjoy/TJSplitWebView;->n:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/tapjoy/g0;

    invoke-direct {v3, v1}, Lcom/tapjoy/g0;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object v0, v0, Lcom/tapjoy/TJSplitWebView;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/view/View;->setClipToOutline(Z)V

    return-void

    :cond_7
    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([FF)V

    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v2, v3, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/tapjoy/TJSplitWebView;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v0, Lcom/tapjoy/TJSplitWebView;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setClipToOutline(Z)V

    return-void

    :cond_8
    iget-object v1, v0, Lcom/tapjoy/TJSplitWebView;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lcom/tapjoy/TJSplitWebView;->a:Lcom/tapjoy/TJWebView;

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/view/View;->setClipToOutline(Z)V

    iget-object v1, v0, Lcom/tapjoy/TJSplitWebView;->l:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, v0, Lcom/tapjoy/TJSplitWebView;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v11}, Landroid/view/View;->setClipToOutline(Z)V

    :cond_9
    return-void

    :cond_a
    :goto_5
    iget-object v0, v0, Lcom/tapjoy/TJSplitWebView;->a:Lcom/tapjoy/TJWebView;

    const/4 v15, 0x4

    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final synthetic a(Landroid/view/View;)V
    .locals 0

    .line 335
    iget-object p1, p0, Lcom/tapjoy/TJSplitWebView;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 336
    iget-object p0, p0, Lcom/tapjoy/TJSplitWebView;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    :cond_0
    return-void
.end method

.method public addLineBreak(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/TJSplitWebView;->o:Landroid/widget/FrameLayout;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/tapjoy/TJSplitWebView;->o:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addProgressBar(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/tapjoy/TJSplitWebView;->k:Landroid/content/Context;

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/tapjoy/TJSplitWebView;->p:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/tapjoy/TJSplitWebView;->p:Landroid/widget/ProgressBar;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/tapjoy/TJSplitWebView;->p:Landroid/widget/ProgressBar;

    const-string v0, "#dddddd"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/tapjoy/TJSplitWebView;->p:Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addToolbar(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;ILjava/util/List;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p11

    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v4, v0, Lcom/tapjoy/TJSplitWebView;->k:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/tapjoy/TJSplitWebView;->n:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/tapjoy/TapjoyUtil;->generateViewId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    iget-object v3, v0, Lcom/tapjoy/TJSplitWebView;->n:Landroid/widget/RelativeLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    iget-object v3, v0, Lcom/tapjoy/TJSplitWebView;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    move/from16 v5, p2

    int-to-float v5, v5

    sget-object v6, Lcom/tapjoy/TJDeviceUtils;->INSTANCE:Lcom/tapjoy/TJDeviceUtils;

    iget-object v7, v0, Lcom/tapjoy/TJSplitWebView;->k:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/tapjoy/TJDeviceUtils;->getDensity(Landroid/content/Context;)F

    move-result v7

    mul-float/2addr v7, v5

    float-to-int v5, v7

    const/4 v7, -0x1

    invoke-direct {v3, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v5, v0, Lcom/tapjoy/TJSplitWebView;->n:Landroid/widget/RelativeLayout;

    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v5, v0, Lcom/tapjoy/TJSplitWebView;->n:Landroid/widget/RelativeLayout;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/tapjoy/TJDeviceUtils;->getDensity(Landroid/content/Context;)F

    move-result v5

    new-instance v6, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v9, Lcom/tapjoy/TJImageButton;

    iget-object v10, v0, Lcom/tapjoy/TJSplitWebView;->k:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/tapjoy/TJImageButton;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/tapjoy/TJSplitWebView;->r:Lcom/tapjoy/TJImageButton;

    invoke-static {}, Lcom/tapjoy/TapjoyUtil;->generateViewId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setId(I)V

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v9, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v11, 0xf

    invoke-virtual {v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v12, 0x9

    invoke-virtual {v9, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move/from16 v12, p15

    int-to-float v12, v12

    mul-float/2addr v12, v5

    float-to-int v12, v12

    invoke-virtual {v9, v12, v12, v12, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v12, v0, Lcom/tapjoy/TJSplitWebView;->r:Lcom/tapjoy/TJImageButton;

    const/high16 v13, 0x40a00000    # 5.0f

    mul-float/2addr v13, v5

    float-to-int v13, v13

    const/high16 v14, 0x41200000    # 10.0f

    mul-float/2addr v14, v5

    float-to-int v14, v14

    invoke-virtual {v12, v13, v14, v14, v14}, Landroid/view/View;->setPadding(IIII)V

    iget-object v12, v0, Lcom/tapjoy/TJSplitWebView;->r:Lcom/tapjoy/TJImageButton;

    invoke-static {v5}, Lcom/tapjoy/TapjoyIcons;->getBackImage(F)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v12, v0, Lcom/tapjoy/TJSplitWebView;->r:Lcom/tapjoy/TJImageButton;

    invoke-virtual {v12, v8}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v12, v0, Lcom/tapjoy/TJSplitWebView;->r:Lcom/tapjoy/TJImageButton;

    new-instance v15, Lbi8;

    invoke-direct {v15, v0}, Lbi8;-><init>(Lcom/tapjoy/TJSplitWebView;)V

    invoke-virtual {v12, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v12, v0, Lcom/tapjoy/TJSplitWebView;->r:Lcom/tapjoy/TJImageButton;

    invoke-static/range {p14 .. p14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v12, v15}, Lcom/tapjoy/TJImageButton;->setDisabledColor(I)V

    iget-object v12, v0, Lcom/tapjoy/TJSplitWebView;->r:Lcom/tapjoy/TJImageButton;

    invoke-static/range {p13 .. p13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v12, v15}, Lcom/tapjoy/TJImageButton;->setEnabledColor(I)V

    iget-object v12, v0, Lcom/tapjoy/TJSplitWebView;->r:Lcom/tapjoy/TJImageButton;

    if-eqz p12, :cond_0

    move v7, v8

    goto :goto_0

    :cond_0
    const/4 v7, 0x4

    :goto_0
    invoke-virtual {v12, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, v0, Lcom/tapjoy/TJSplitWebView;->r:Lcom/tapjoy/TJImageButton;

    invoke-virtual {v6, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Lcom/tapjoy/TJImageButton;

    iget-object v9, v0, Lcom/tapjoy/TJSplitWebView;->k:Landroid/content/Context;

    invoke-direct {v7, v9}, Lcom/tapjoy/TJImageButton;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/tapjoy/TJSplitWebView;->s:Lcom/tapjoy/TJImageButton;

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v9, v0, Lcom/tapjoy/TJSplitWebView;->r:Lcom/tapjoy/TJImageButton;

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v9

    invoke-virtual {v7, v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v7, v14, v14, v14, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v9, v0, Lcom/tapjoy/TJSplitWebView;->s:Lcom/tapjoy/TJImageButton;

    invoke-virtual {v9, v14, v14, v13, v14}, Landroid/view/View;->setPadding(IIII)V

    iget-object v9, v0, Lcom/tapjoy/TJSplitWebView;->s:Lcom/tapjoy/TJImageButton;

    invoke-static {v5}, Lcom/tapjoy/TapjoyIcons;->getForwardImage(F)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v9, v0, Lcom/tapjoy/TJSplitWebView;->s:Lcom/tapjoy/TJImageButton;

    invoke-virtual {v9, v8}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v9, v0, Lcom/tapjoy/TJSplitWebView;->s:Lcom/tapjoy/TJImageButton;

    new-instance v12, Lci8;

    invoke-direct {v12, v0}, Lci8;-><init>(Lcom/tapjoy/TJSplitWebView;)V

    invoke-virtual {v9, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v9, v0, Lcom/tapjoy/TJSplitWebView;->s:Lcom/tapjoy/TJImageButton;

    invoke-static/range {p14 .. p14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/tapjoy/TJImageButton;->setDisabledColor(I)V

    iget-object v9, v0, Lcom/tapjoy/TJSplitWebView;->s:Lcom/tapjoy/TJImageButton;

    invoke-static/range {p13 .. p13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/tapjoy/TJImageButton;->setEnabledColor(I)V

    iget-object v9, v0, Lcom/tapjoy/TJSplitWebView;->s:Lcom/tapjoy/TJImageButton;

    if-eqz p12, :cond_1

    move v12, v8

    goto :goto_1

    :cond_1
    const/4 v12, 0x4

    :goto_1
    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v9, v0, Lcom/tapjoy/TJSplitWebView;->s:Lcom/tapjoy/TJImageButton;

    invoke-virtual {v6, v9, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/ImageButton;

    iget-object v9, v0, Lcom/tapjoy/TJSplitWebView;->k:Landroid/content/Context;

    invoke-direct {v7, v9}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v12, 0xb

    invoke-virtual {v9, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move/from16 v12, p10

    int-to-float v12, v12

    mul-float/2addr v12, v5

    float-to-int v12, v12

    invoke-virtual {v9, v12, v12, v12, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v5

    float-to-int v12, v12

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v5

    float-to-int v14, v14

    const/4 v11, 0x3

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v5

    float-to-int v11, v11

    const/4 v15, 0x2

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v7, v12, v14, v11, v2}, Landroid/view/View;->setPadding(IIII)V

    invoke-static {v5}, Lcom/tapjoy/TapjoyIcons;->getCloseImage(F)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-static/range {p9 .. p9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v2, v11}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v2, Ldi8;

    invoke-direct {v2, v0}, Ldi8;-><init>(Lcom/tapjoy/TJSplitWebView;)V

    invoke-virtual {v7, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v7, v0, Lcom/tapjoy/TJSplitWebView;->k:Landroid/content/Context;

    invoke-direct {v2, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/tapjoy/TJSplitWebView;->q:Landroid/widget/TextView;

    invoke-static {}, Lcom/tapjoy/TapjoyUtil;->generateViewId()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/view/View;->setId(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xd

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v7, v0, Lcom/tapjoy/TJSplitWebView;->q:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v7, v0, Lcom/tapjoy/TJSplitWebView;->q:Landroid/widget/TextView;

    const/16 v9, 0xc8

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setMaxEms(I)V

    iget-object v7, v0, Lcom/tapjoy/TJSplitWebView;->q:Landroid/widget/TextView;

    const/4 v9, 0x4

    invoke-virtual {v7, v9}, Landroid/view/View;->setTextAlignment(I)V

    iget-object v7, v0, Lcom/tapjoy/TJSplitWebView;->q:Landroid/widget/TextView;

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v7, v0, Lcom/tapjoy/TJSplitWebView;->q:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v7, v0, Lcom/tapjoy/TJSplitWebView;->q:Landroid/widget/TextView;

    move/from16 v9, p5

    int-to-float v9, v9

    invoke-virtual {v7, v15, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v7, v0, Lcom/tapjoy/TJSplitWebView;->q:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz p7, :cond_2

    iget-object v7, v0, Lcom/tapjoy/TJSplitWebView;->q:Landroid/widget/TextView;

    new-instance v9, Lei8;

    invoke-direct {v9, v0}, Lei8;-><init>(Lcom/tapjoy/TJSplitWebView;)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "bold"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v9, "sans-serif"

    if-nez v7, :cond_4

    const-string v7, "semibold"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v7, v0, Lcom/tapjoy/TJSplitWebView;->q:Landroid/widget/TextView;

    if-nez v1, :cond_3

    invoke-static {v9, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_2

    :cond_3
    const-string v1, "sans-serif-medium"

    invoke-static {v1, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lcom/tapjoy/TJSplitWebView;->q:Landroid/widget/TextView;

    invoke-static {v9, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_2
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/tapjoy/TJSplitWebView;->q:Landroid/widget/TextView;

    move-object/from16 v7, p4

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v1, v0, Lcom/tapjoy/TJSplitWebView;->q:Landroid/widget/TextView;

    invoke-virtual {v6, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageButton;

    iget-object v2, v0, Lcom/tapjoy/TJSplitWebView;->k:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/tapjoy/TapjoyUtil;->generateViewId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v7, v0, Lcom/tapjoy/TJSplitWebView;->q:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v2, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0xf

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v13, v13, v13, v13}, Landroid/view/View;->setPadding(IIII)V

    invoke-static {v5}, Lcom/tapjoy/TapjoyIcons;->getOpenBrowserImage(F)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setBackgroundColor(I)V

    if-eqz p7, :cond_6

    new-instance v4, Lfi8;

    invoke-direct {v4, v0}, Lfi8;-><init>(Lcom/tapjoy/TJSplitWebView;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    invoke-virtual {v6, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v2, v0, Lcom/tapjoy/TJSplitWebView;->m:Z

    if-nez v2, :cond_7

    iget-object v2, v0, Lcom/tapjoy/TJSplitWebView;->q:Landroid/widget/TextView;

    const/4 v9, 0x4

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_7
    const/4 v9, 0x4

    :goto_3
    if-nez p8, :cond_8

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v1, v0, Lcom/tapjoy/TJSplitWebView;->n:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/tapjoy/TJSplitWebView;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public animateOpen(Landroid/view/ViewGroup;)V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/TJSplitWebView;->i:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const-string v1, "onOpen"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJSplitWebView;->i:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "slideUp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setY(F)V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method public applyLayoutOption(Lorg/json/JSONObject;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tapjoy/TJSplitWebView;->setLayoutOption(Lorg/json/JSONObject;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/tapjoy/TJSplitWebView;->a(II)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lai8;

    invoke-direct {v1, p0}, Lai8;-><init>(Lcom/tapjoy/TJSplitWebView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public final synthetic b(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/tapjoy/TJSplitWebView;->getLastUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/tapjoy/TJSplitWebView;->d:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/tapjoy/TJSplitWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/TJSplitWebView;->getLastUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/tapjoy/TJSplitWebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method public final synthetic b(Landroid/view/View;)V
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/tapjoy/TJSplitWebView;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->goForward()V

    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJSplitWebView;->j:Lcom/tapjoy/TJAdUnitJSBridge;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/tapjoy/TJAdUnitJSBridge;->dismissSplitView(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic d(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/tapjoy/TJSplitWebView;->openInExternalBrowser()V

    return-void
.end method

.method public final synthetic e(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/tapjoy/TJSplitWebView;->openInExternalBrowser()V

    return-void
.end method

.method public getLastUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJSplitWebView;->e:Ljava/lang/String;

    return-object p0
.end method

.method public goBack()Z
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJSplitWebView;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tapjoy/TJSplitWebView;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFirstOrLastPage()V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/TJSplitWebView;->r:Lcom/tapjoy/TJImageButton;

    iget-object v1, p0, Lcom/tapjoy/TJSplitWebView;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/tapjoy/TJSplitWebView;->s:Lcom/tapjoy/TJImageButton;

    iget-object p0, p0, Lcom/tapjoy/TJSplitWebView;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/tapjoy/TJImageButton;->setEnabled(Z)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJSplitWebView;->a:Lcom/tapjoy/TJWebView;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/tapjoy/TJSplitWebView;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/tapjoy/TJSplitWebView;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-boolean v2, p0, Lcom/tapjoy/TJSplitWebView;->B:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/tapjoy/TJSplitWebView;->C:I

    if-lez v2, :cond_0

    move v1, v2

    :cond_0
    iget-object v2, p0, Lcom/tapjoy/TJSplitWebView;->a:Lcom/tapjoy/TJWebView;

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/TJSplitWebView;->a(II)V

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method public openInExternalBrowser()V
    .locals 3

    iget-object v0, p0, Lcom/tapjoy/TJSplitWebView;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJSplitWebView;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tapjoy/TJSplitWebView;->getLastUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJSplitWebView;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_1
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tapjoy/TJSplitWebView;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object p0, p0, Lcom/tapjoy/TJSplitWebView;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setErrorDialog(Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJSplitWebView;->u:Z

    const-string v0, "description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJSplitWebView;->v:Ljava/lang/String;

    const-string v0, "close"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJSplitWebView;->w:Ljava/lang/String;

    const-string v0, "reload"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/TJSplitWebView;->x:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setExitHosts(Lorg/json/JSONArray;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tapjoy/TJSplitWebView;->h:Ljava/util/HashSet;

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TJSplitWebView;->h:Ljava/util/HashSet;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gt v0, v1, :cond_2

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/tapjoy/TJSplitWebView;->h:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setLayoutOption(Lorg/json/JSONObject;)V
    .locals 3

    if-eqz p1, :cond_2

    const-string v0, "landscape"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/tapjoy/h0;

    invoke-direct {v2, v0}, Lcom/tapjoy/h0;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/tapjoy/TJSplitWebView;->c:Lcom/tapjoy/h0;

    const-string v0, "portrait"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v1, Lcom/tapjoy/h0;

    invoke-direct {v1, p1}, Lcom/tapjoy/h0;-><init>(Lorg/json/JSONObject;)V

    :cond_1
    iput-object v1, p0, Lcom/tapjoy/TJSplitWebView;->b:Lcom/tapjoy/h0;

    :cond_2
    return-void
.end method

.method public setTrigger(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object p1, v0

    :cond_1
    iput-object p1, p0, Lcom/tapjoy/TJSplitWebView;->f:Ljava/lang/String;

    if-eqz p2, :cond_2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_2
    iput-object v0, p0, Lcom/tapjoy/TJSplitWebView;->g:Landroid/net/Uri;

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJSplitWebView;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    return-void
.end method

.method public showErrorDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tapjoy/TJSplitWebView;->k:Landroid/content/Context;

    const v2, 0x103023a

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/tapjoy/TJSplitWebView;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJSplitWebView;->w:Ljava/lang/String;

    new-instance v2, Lyh8;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJSplitWebView;->x:Ljava/lang/String;

    new-instance v2, Lzh8;

    invoke-direct {v2, p0}, Lzh8;-><init>(Lcom/tapjoy/TJSplitWebView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
