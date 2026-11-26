.class public Lcom/my/target/eg;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lcom/my/target/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/eg$b;,
        Lcom/my/target/eg$d;,
        Lcom/my/target/eg$a;,
        Lcom/my/target/eg$c;
    }
.end annotation


# static fields
.field public static final synthetic O:I


# instance fields
.field public final A:I

.field public B:Lcom/my/target/l$a;

.field public C:Lcom/my/target/r0$a;

.field public D:I

.field public E:F

.field public F:F

.field public G:Z

.field public H:Z

.field public I:Ljava/lang/String;

.field public J:Ljava/lang/String;

.field public K:Z

.field public L:Z

.field public M:Le6a;

.field public N:Z

.field public final b:Landroid/widget/LinearLayout;

.field public final c:Lcom/my/target/zf;

.field public final d:Lcom/my/target/g5;

.field public final e:Lcom/my/target/g5;

.field public final f:Lcom/my/target/m;

.field public final g:Lcom/my/target/eg$b;

.field public final h:Lcom/my/target/eg$c;

.field public final i:Landroid/widget/TextView;

.field public final j:Lcom/my/target/common/views/StarsRatingView;

.field public final k:Landroid/widget/Button;

.field public final l:Landroid/widget/TextView;

.field public final m:Ll3a;

.field public final n:Landroid/widget/TextView;

.field public final o:Lcom/my/target/fk;

.field public final p:Lcom/my/target/f6;

.field public final q:Lcom/my/target/g5;

.field public final r:Lcom/my/target/eg$d;

.field public final s:Lcom/my/target/eg$a;

.field public final t:Lcom/my/target/c1;

.field public final u:Landroid/widget/TextView;

.field public final v:Landroid/widget/FrameLayout;

.field public final w:I

.field public final x:I

.field public final y:Landroid/graphics/Bitmap;

.field public final z:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/my/target/eg;->L:Z

    new-instance v3, Ld6a;

    invoke-direct {v3}, Le6a;-><init>()V

    iput-object v3, v0, Lcom/my/target/eg;->M:Le6a;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/my/target/eg;->N:Z

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/my/target/eg;->l:Landroid/widget/TextView;

    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lcom/my/target/eg;->i:Landroid/widget/TextView;

    new-instance v11, Lcom/my/target/common/views/StarsRatingView;

    invoke-direct {v11, v1}, Lcom/my/target/common/views/StarsRatingView;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lcom/my/target/eg;->j:Lcom/my/target/common/views/StarsRatingView;

    new-instance v12, Landroid/widget/Button;

    invoke-direct {v12, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lcom/my/target/eg;->k:Landroid/widget/Button;

    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v13, v0, Lcom/my/target/eg;->u:Landroid/widget/TextView;

    new-instance v14, Landroid/widget/FrameLayout;

    invoke-direct {v14, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v14, v0, Lcom/my/target/eg;->v:Landroid/widget/FrameLayout;

    new-instance v15, Lcom/my/target/g5;

    invoke-direct {v15, v1}, Lcom/my/target/g5;-><init>(Landroid/content/Context;)V

    iput-object v15, v0, Lcom/my/target/eg;->d:Lcom/my/target/g5;

    new-instance v5, Lcom/my/target/g5;

    invoke-direct {v5, v1}, Lcom/my/target/g5;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/my/target/eg;->e:Lcom/my/target/g5;

    new-instance v6, Lcom/my/target/g5;

    invoke-direct {v6, v1}, Lcom/my/target/g5;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/my/target/eg;->q:Lcom/my/target/g5;

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/my/target/eg;->n:Landroid/widget/TextView;

    new-instance v8, Lcom/my/target/zf;

    new-instance v9, Ll3a;

    invoke-direct {v9, v1}, Ll3a;-><init>(Landroid/content/Context;)V

    invoke-direct {v8, v1, v9, v3}, Lcom/my/target/zf;-><init>(Landroid/content/Context;Ll3a;Z)V

    iput-object v8, v0, Lcom/my/target/eg;->c:Lcom/my/target/zf;

    new-instance v9, Lcom/my/target/fk;

    invoke-direct {v9, v1}, Lcom/my/target/fk;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/my/target/eg;->o:Lcom/my/target/fk;

    new-instance v3, Lcom/my/target/f6;

    invoke-direct {v3, v1}, Lcom/my/target/f6;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/my/target/eg;->p:Lcom/my/target/f6;

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/my/target/eg;->b:Landroid/widget/LinearLayout;

    move-object/from16 v22, v2

    new-instance v2, Ll3a;

    invoke-direct {v2, v1}, Ll3a;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/my/target/eg;->m:Ll3a;

    move-object/from16 v23, v2

    new-instance v2, Lcom/my/target/eg$b;

    invoke-direct {v2, v0}, Lcom/my/target/eg$b;-><init>(Lcom/my/target/eg;)V

    iput-object v2, v0, Lcom/my/target/eg;->g:Lcom/my/target/eg$b;

    new-instance v2, Lcom/my/target/eg$d;

    invoke-direct {v2, v0}, Lcom/my/target/eg$d;-><init>(Lcom/my/target/eg;)V

    iput-object v2, v0, Lcom/my/target/eg;->r:Lcom/my/target/eg$d;

    new-instance v2, Lcom/my/target/eg$a;

    invoke-direct {v2, v0}, Lcom/my/target/eg$a;-><init>(Lcom/my/target/eg;)V

    iput-object v2, v0, Lcom/my/target/eg;->s:Lcom/my/target/eg$a;

    move-object/from16 v20, v2

    new-instance v2, Lcom/my/target/m;

    invoke-direct {v2, v1}, Lcom/my/target/m;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/my/target/eg;->f:Lcom/my/target/m;

    const-string v1, "dismiss_button"

    invoke-static {v4, v1}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    const-string v1, "title_text"

    invoke-static {v10, v1}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    const-string v1, "stars_view"

    invoke-static {v11, v1}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    const-string v1, "cta_button"

    invoke-static {v12, v1}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    const-string v1, "replay_text"

    invoke-static {v13, v1}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    const-string v1, "shadow"

    invoke-static {v14, v1}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    const-string v1, "pause_button"

    invoke-static {v15, v1}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    const-string v1, "play_button"

    invoke-static {v5, v1}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    const-string v1, "replay_button"

    invoke-static {v6, v1}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    const-string v1, "domain_text"

    invoke-static {v7, v1}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    const-string v1, "media_view"

    invoke-static {v8, v1}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    const-string v1, "video_progress_wheel"

    invoke-static {v9, v1}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    const-string v1, "sound_button"

    invoke-static {v3, v1}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    const/high16 v1, 0x41e00000    # 28.0f

    move-object/from16 v16, v13

    move-object/from16 v13, v23

    invoke-virtual {v13, v1}, Ll3a;->b(F)I

    move-result v1

    iput v1, v0, Lcom/my/target/eg;->A:I

    move-object/from16 v17, v15

    const/high16 v15, 0x41800000    # 16.0f

    move-object/from16 v21, v5

    invoke-virtual {v13, v15}, Ll3a;->b(F)I

    move-result v5

    iput v5, v0, Lcom/my/target/eg;->w:I

    move/from16 p1, v5

    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v13, v5}, Ll3a;->b(F)I

    move-result v15

    iput v15, v0, Lcom/my/target/eg;->x:I

    const/16 v15, 0x140

    const-string v5, "iVBORw0KGgoAAAANSUhEUgAAADgAAAA4CAMAAACfWMssAAAAdVBMVEUAAAAAAAAgICDf398QEBDv7+/Pz8+fn58gICAQEBDe3t5AQEBwcHDv7+9/f3/f398wMDCAgIBgYGCQkJDAwMC/v7/Pz8+fn59QUFBAQECvr69QUFCPj4+/v79wcHBvb29gYGBfX1++vr6urq6Ojo5hYWH///+8blWlAAAAJnRSTlOAAJDviPfnzyAQ3qC478DfmICvx9/fz59QQK+oj79wb2Bfvq6OsPCmZBAAAAJhSURBVEjHndbXYuIwEAXQiSQXueAGtmkhJNn7/5+4I8JmbJAWw33iQYex7FGhN0/s9jT0FTjVcXfavvlC92o8lpil3J0fQ9s4FXdtrYij8qKLXeUhDUFhm8LQLKp1tknDcKyY5eRJnQDZOQDtwcOkrAa+rQ+mPaKC/pMiQpbew7SCVgEiRUWSuNjQg5hYJP26hBYkYTmFluvRosTo7QQeoM0yaDS+BX4gUrQwKsJ4hW6CRfBF6ruvgsxeYROcYB4BdJs1mh+YAoEHXQEemKO0FzgEvoRJAKbkL8mwQh3okygnhv6SxK80DkxPKxI4Lzky3KH1Ty8x9AM14mQ/f7GfDEso//SIfiEwWwEGpaUtYhke4Ro3vX+QU//hCdfTxtvSOzrpYIkigS6mm3ZXh3faSddEN8PlUTet+9vNL2wx0BH5ZFAAuhmbSEbW6KmCegTJFGC0kkZRyGRMEHIYbXi0ngxdCA0i9/sViNdggQ3ViCdDl72cFdBSO385PeqFn0NjL+vjkwa0DxsgcidDBz3p8t3ilktuWi7U5Ho/hWoV3TW5LWGWLKuN1COFktfjEcXDhayT2fHXYsdwxJo82evw1hHjzNCWyAObld57YY3ssss1WD+3PSYYHJSSCzdkBaQOSknfRD1QX48ALpk9eeikF8gZnzvmzi8erIfpUd4vP8ozO7s8ZK9dHpx8+roi8skLksjHV7I+DV0C42DRfA0cbODa+ZEBSR1i2Ri+6KYNuGp7U9YUzMpGygmc0CFztivyi1Z128UQ5oPywF+3l/njKEygL9vT12cGTtUPp631DfkLyeFPR/ZOiKIAAAAASUVORK5CYII="

    invoke-static {v15, v5}, Lwfa;->a(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v0, Lcom/my/target/eg;->y:Landroid/graphics/Bitmap;

    const-string v5, "iVBORw0KGgoAAAANSUhEUgAAADgAAAA4CAMAAACfWMssAAAAclBMVEUAAAAAAAAgICDf39+goKAgICAQEBDe3t7Pz88QEBDv7+9wcHBAQEDf39+AgIDv7+/AwMCQkJDPz8+/v7+vr69gYGCfn5+Pj49fX19QUFBAQEAwMDBQUFDu7u5/f39/f39wcHBvb2+/v78wMDCvr6////9R0hTPAAAAJXRSTlOAAJDvzyAQ3ueI97ig34Dv38fPv6+vn49fUECYqO7Av3Bv35fYiozA+AAAAjJJREFUSMe91um2mjAUBeBDGMOkjDJoe63d7/+KTbyxpzZJgXat7j8i8nkICUkocCRZ7mNbQaXq+vsSuEK2mrsT3nLqp22Y1FplzbAKUhFl0WS68hj7ILNvhaS3iEHbOvbDuVKsJEfWCEgnD0wuzOyIELgkLhi3yAv6Q4ocaWzDuEIoPISLsiR2maSNyIwl/XQR7Uj0lAwTVY92JUOb/AIvCOU+KENcGE7IBe2MyDEbqBtYeB9kaPUK0sTA2tvAMgesk2fUnzAGhNt9ARywxC15wtHTEzICvhpoldSwwuoZJ3lJBlolFZyQeZoXCjLQKjkr2GNwNy+S5IEFOgVPEO7mEfmgVPdKCzK+PIeJbp4fUoaFPtDwCOYIYihfXx5k0uCDeh41+dvlfBSGwvzx1ZwdMFKHki9yH0VQ0nx8ZkVLFcQGNIQdkUCqf9mEGrHTAXZBLdn9Fxgh/P4mgb9/OC3WLdhY3VGioxHD8QFQoN8z5IR89TvxkPMN8vC6NciTE+TR10rgFlDQoTj6Ig/oFZxxJkeuoX/qyDApqO61dEmh5NUJV6TPWa7G+dj0GGHUkEvunJAFEGvIJZ0NtWFolgBVMj246MQGBvOxZW7694U1SNr9S3mavG0e0uObh5c8vF1heXCDxHJ7S9bGvk1g5i1anq1NIGdKgejhY+ns3+jGNYBs+K2sLBQ71UnggEzHVNumKJ9aPIYmAzMH5Ez9DRytupkZQ1eWe9+l2lTteF+UsvMDBKFIvMRHIr8AAAAASUVORK5CYII="

    invoke-static {v15, v5}, Lwfa;->a(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v0, Lcom/my/target/eg;->z:Landroid/graphics/Bitmap;

    new-instance v5, Lcom/my/target/eg$c;

    invoke-direct {v5, v0}, Lcom/my/target/eg$c;-><init>(Lcom/my/target/eg;)V

    iput-object v5, v0, Lcom/my/target/eg;->h:Lcom/my/target/eg$c;

    new-instance v5, Lcom/my/target/c1;

    new-instance v15, Lq7;

    invoke-direct {v15, v0}, Lq7;-><init>(Ljava/lang/Object;)V

    invoke-direct {v5, v15}, Lcom/my/target/c1;-><init>(Lcom/my/target/c1$a;)V

    iput-object v5, v0, Lcom/my/target/eg;->t:Lcom/my/target/c1;

    const/high16 v15, -0x1000000

    invoke-virtual {v0, v15}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v8, v15}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v8}, Lcom/my/target/zf;->f()V

    const/high16 v5, -0x67000000

    invoke-virtual {v14, v5}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v5, 0x8

    invoke-virtual {v14, v5}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v25, v14

    const/4 v14, 0x2

    const/high16 v15, 0x41800000    # 16.0f

    invoke-virtual {v4, v14, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setTextAlignment(I)V

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v28, v8

    invoke-virtual {v13, v14}, Ll3a;->b(F)I

    move-result v8

    move-object/from16 v24, v9

    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v13, v5}, Ll3a;->b(F)I

    move-result v9

    move-object/from16 v30, v6

    const/4 v6, -0x1

    move-object/from16 v31, v7

    const/4 v7, -0x1

    move/from16 v32, v5

    const/high16 v5, -0x78000000

    move/from16 v38, p1

    move-object/from16 v33, v21

    move-object/from16 v37, v24

    move-object/from16 v36, v28

    move-object/from16 v34, v30

    move-object/from16 v35, v31

    const/4 v14, -0x1

    invoke-static/range {v4 .. v9}, Ll3a;->k(Landroid/view/View;IIIII)V

    const/4 v5, 0x2

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/high16 v6, 0x41900000    # 18.0f

    invoke-virtual {v10, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v7, v16

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v13, v6}, Ll3a;->b(F)I

    move-result v16

    move-object/from16 v9, v17

    const/high16 v8, 0x40800000    # 4.0f

    invoke-virtual {v13, v8}, Ll3a;->b(F)I

    move-result v17

    move/from16 v29, v14

    const/4 v14, -0x1

    move-object/from16 v21, v15

    const/4 v15, -0x1

    move-object/from16 v24, v13

    const/high16 v13, -0x78000000

    move-object/from16 v23, v4

    move-object/from16 v8, v21

    move-object/from16 v6, v24

    move-object/from16 v5, v25

    move/from16 v4, v29

    move-object/from16 v25, v3

    const/4 v3, 0x0

    invoke-static/range {v12 .. v17}, Ll3a;->k(Landroid/view/View;IIIII)V

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v3, 0x2

    const/high16 v15, 0x41800000    # 16.0f

    invoke-virtual {v12, v3, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {v6, v3}, Ll3a;->b(F)I

    move-result v3

    invoke-virtual {v12, v3}, Landroid/view/View;->setMinimumWidth(I)V

    move/from16 v3, v38

    invoke-virtual {v12, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v6, v3}, Ll3a;->b(F)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v6, v3}, Ll3a;->b(F)I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v6, v3}, Ll3a;->b(F)I

    move-result v15

    int-to-float v15, v15

    const/high16 v4, -0x1000000

    invoke-virtual {v10, v13, v14, v15, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    const v13, -0x333334

    move-object/from16 v14, v35

    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v13, 0xa

    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setMaxEms(I)V

    invoke-virtual {v6, v3}, Ll3a;->b(F)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v6, v3}, Ll3a;->b(F)I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v26, v10

    invoke-virtual {v6, v3}, Ll3a;->b(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v14, v13, v15, v10, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    move-object/from16 v10, v20

    move-object/from16 v4, v22

    invoke-virtual {v4, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v13, 0x11

    invoke-virtual {v4, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v13, 0x8

    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    const/high16 v15, 0x41000000    # 8.0f

    invoke-virtual {v6, v15}, Ll3a;->b(F)I

    move-result v3

    invoke-virtual {v6, v15}, Ll3a;->b(F)I

    move-result v15

    const/4 v13, 0x0

    invoke-virtual {v4, v3, v13, v15, v13}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v7}, Landroid/widget/TextView;->setSingleLine()V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v7}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    const/4 v8, 0x1

    invoke-virtual {v7, v3, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/4 v3, -0x1

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x2

    const/high16 v15, 0x41800000    # 16.0f

    invoke-virtual {v7, v3, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v8, 0x40800000    # 4.0f

    invoke-virtual {v6, v8}, Ll3a;->b(F)I

    move-result v13

    iput v13, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v6, v15}, Ll3a;->b(F)I

    move-result v8

    invoke-virtual {v6, v15}, Ll3a;->b(F)I

    move-result v13

    move-object/from16 v22, v3

    invoke-virtual {v6, v15}, Ll3a;->b(F)I

    move-result v3

    move-object/from16 v27, v7

    invoke-virtual {v6, v15}, Ll3a;->b(F)I

    move-result v7

    move-object/from16 v15, v34

    invoke-virtual {v15, v8, v13, v3, v7}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v13, 0x8

    invoke-virtual {v9, v13}, Landroid/view/View;->setVisibility(I)V

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v6, v3}, Ll3a;->b(F)I

    move-result v7

    invoke-virtual {v6, v3}, Ll3a;->b(F)I

    move-result v8

    invoke-virtual {v6, v3}, Ll3a;->b(F)I

    move-result v13

    move-object/from16 v30, v15

    invoke-virtual {v6, v3}, Ll3a;->b(F)I

    move-result v15

    invoke-virtual {v9, v7, v8, v13, v15}, Landroid/view/View;->setPadding(IIII)V

    move-object/from16 v7, v33

    invoke-virtual {v7, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v13, 0x8

    invoke-virtual {v7, v13}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v6, v3}, Ll3a;->b(F)I

    move-result v8

    invoke-virtual {v6, v3}, Ll3a;->b(F)I

    move-result v10

    invoke-virtual {v6, v3}, Ll3a;->b(F)I

    move-result v13

    invoke-virtual {v6, v3}, Ll3a;->b(F)I

    move-result v3

    invoke-virtual {v7, v8, v10, v13, v3}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    const/16 v3, 0x1a4

    const-string v8, "iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH4AMXCy8fw79+rQAAAhVJREFUeNrt2y9IXlEYx3H3ooIiiCAIC4JgMRgsCyaLwWaxLK0srZhWVtYWVtYWlpYMNsvK0sKKRTANBivDIIggIiLiZ+URDncHFgzbznN+8d77nvPwvec99zz/xsa6uv4oPMWjzADgK55kBnCvj3icGQBc4hWmsgK41w/sZAPwswLiC9ayAJjGa1wNrt/hAxaaBlBcW8ReZTVc4CUmmwZQ3FvHYQXEd2w3DyDuj/AMJxUQn7HaNIDiuRm8wfUAwi3eY75pAMXzS9ivrIZz7GKiaQDF7zZwVAHxDVvNAyj2h+c4rYD4hJWmARRjzOItbir7wzvMNQ2gGGsZB5XVcIYXGG8aQDHmJo4rII6x2TyAGHc83vpZBcQBlpsGUIw/F/vA7QDCTewbs00DKOZZiS/DUKfxJRk1DaCYbyvOCkMdYaN5ADHnRJwazysg9rHUNIBi7vnwI4b7w3X4HTNNAyhsWA3PcqiT8ERHTQMobNmOWMNQh1hvHkDYMxlRp4sKiD0sNg2gsGsh4pB3AwhXEbecbhpAYd9aRKZVItgPT+v96wAKO3ciVzHUw9J6/wuAsHUqslaXFRC/pfVGY139L9A3wf4Z7AehfhTuzlB3h3tApIfE/jqAtEHRtGHx1ImRtKmxtMnRtOnx1AUSaUtk0hZJpS2TS10ombZUNm2xdPpy+d4w0VtmetNU2ra51I2TuVtnuxrWL/YiKQ6CN9uRAAAAAElFTkSuQmCC"

    invoke-static {v3, v8}, Lwfa;->a(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v7, v8}, Lcom/my/target/g5;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    const-string v8, "iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH4AMXCjITNKc0rQAAAJFJREFUeNrt2tENgCAMQEEwLuD+QzpC3cBURWLsvV+JNRfhi9YkSSpbP3sYETF0WO89s27m3KX6H1AeYL2wdrs5Y3/4ja/OTZ8B2f074h0z5zoDAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/lr6rvDoK+xfmWsLNEmSVLUD47EiX/OuE8UAAAAASUVORK5CYII="

    invoke-static {v3, v8}, Lwfa;->a(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v9, v3}, Lcom/my/target/g5;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v6, v3}, Ll3a;->b(F)I

    move-result v19

    const/high16 v8, 0x40800000    # 4.0f

    invoke-virtual {v6, v8}, Ll3a;->b(F)I

    move-result v20

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/high16 v16, -0x78000000

    move-object v15, v9

    invoke-static/range {v15 .. v20}, Ll3a;->k(Landroid/view/View;IIIII)V

    invoke-virtual {v6, v3}, Ll3a;->b(F)I

    move-result v20

    invoke-virtual {v6, v8}, Ll3a;->b(F)I

    move-result v21

    const/16 v19, -0x1

    const/high16 v17, -0x78000000

    move-object/from16 v16, v7

    invoke-static/range {v16 .. v21}, Ll3a;->k(Landroid/view/View;IIIII)V

    invoke-virtual {v6, v3}, Ll3a;->b(F)I

    move-result v20

    invoke-virtual {v6, v8}, Ll3a;->b(F)I

    move-result v21

    move-object/from16 v16, v30

    invoke-static/range {v16 .. v21}, Ll3a;->k(Landroid/view/View;IIIII)V

    move-object/from16 v15, v16

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v6, v3}, Ll3a;->b(F)I

    move-result v3

    invoke-virtual {v11, v3}, Lcom/my/target/common/views/StarsRatingView;->setStarSize(I)V

    move-object/from16 v3, v37

    const/16 v13, 0x8

    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v1}, Lcom/my/target/m;->setFixedHeight(I)V

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v0, v22

    move-object/from16 v7, v27

    invoke-virtual {v4, v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setClickAreaActual(Lt2a;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PromoStyle1View: Apply click area "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lt2a;->q:I

    iget-boolean v2, p1, Lt2a;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to view"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/my/target/eg;->t:Lcom/my/target/c1;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Lcom/my/target/eg;->k:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, p0, Lcom/my/target/eg;->i:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v5, p0, Lcom/my/target/eg;->j:Lcom/my/target/common/views/StarsRatingView;

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v6, p0, Lcom/my/target/eg;->n:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v7, p0, Lcom/my/target/eg;->c:Lcom/my/target/zf;

    invoke-virtual {v7}, Lcom/my/target/zf;->getClickableLayout()Landroid/widget/FrameLayout;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-boolean v0, p1, Lt2a;->l:Z

    iget-object v8, p0, Lcom/my/target/eg;->h:Lcom/my/target/eg$c;

    if-nez v0, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, v8

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p1, Lt2a;->g:Z

    if-nez v0, :cond_3

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_3

    :cond_3
    :goto_2
    move-object v0, v8

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p1, Lt2a;->a:Z

    if-nez v0, :cond_5

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    move-object v0, v1

    goto :goto_5

    :cond_5
    :goto_4
    move-object v0, v8

    :goto_5
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p1, Lt2a;->e:Z

    if-nez v0, :cond_7

    if-eqz v2, :cond_6

    goto :goto_6

    :cond_6
    move-object v0, v1

    goto :goto_7

    :cond_7
    :goto_6
    move-object v0, v8

    :goto_7
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p1, Lt2a;->j:Z

    if-nez v0, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    move-object v1, v8

    :cond_9
    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v7}, Lcom/my/target/zf;->getClickableLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-boolean p1, p1, Lt2a;->n:Z

    if-nez p1, :cond_b

    if-eqz v2, :cond_a

    goto :goto_8

    :cond_a
    iget-object v8, p0, Lcom/my/target/eg;->r:Lcom/my/target/eg$d;

    :cond_b
    :goto_8
    invoke-virtual {v0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setClickAreaLegacy(Lt2a;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PromoStyle1View: Apply click area "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lt2a;->q:I

    iget-boolean v2, p1, Lt2a;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to view"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p1, Lt2a;->l:Z

    iget-object v3, p0, Lcom/my/target/eg;->h:Lcom/my/target/eg$c;

    if-nez v0, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, v3

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p1, Lt2a;->g:Z

    if-nez v0, :cond_3

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_3

    :cond_3
    :goto_2
    move-object v0, v3

    :goto_3
    iget-object v4, p0, Lcom/my/target/eg;->k:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p1, Lt2a;->a:Z

    if-nez v0, :cond_5

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    move-object v0, v1

    goto :goto_5

    :cond_5
    :goto_4
    move-object v0, v3

    :goto_5
    iget-object v4, p0, Lcom/my/target/eg;->i:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p1, Lt2a;->e:Z

    if-nez v0, :cond_7

    if-eqz v2, :cond_6

    goto :goto_6

    :cond_6
    move-object v0, v1

    goto :goto_7

    :cond_7
    :goto_6
    move-object v0, v3

    :goto_7
    iget-object v4, p0, Lcom/my/target/eg;->j:Lcom/my/target/common/views/StarsRatingView;

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p1, Lt2a;->j:Z

    if-nez v0, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    move-object v1, v3

    :cond_9
    iget-object v0, p0, Lcom/my/target/eg;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/my/target/eg;->c:Lcom/my/target/zf;

    invoke-virtual {v0}, Lcom/my/target/zf;->getClickableLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-boolean p1, p1, Lt2a;->n:Z

    if-nez p1, :cond_b

    if-eqz v2, :cond_a

    goto :goto_8

    :cond_a
    iget-object v3, p0, Lcom/my/target/eg;->r:Lcom/my/target/eg$d;

    :cond_b
    :goto_8
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/my/target/eg;->c:Lcom/my/target/zf;

    iget-object v1, v0, Lcom/my/target/zf;->b:Lcom/my/target/zh;

    const/16 v2, 0x8

    .line 52
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 53
    iget-object v0, v0, Lcom/my/target/zf;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/my/target/eg;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/my/target/eg;->e:Lcom/my/target/g5;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 56
    iget v0, p0, Lcom/my/target/eg;->D:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 57
    iget-object p0, p0, Lcom/my/target/eg;->d:Lcom/my/target/g5;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    .line 59
    iget-object p0, p0, Lcom/my/target/eg;->c:Lcom/my/target/zf;

    .line 60
    iget-object p0, p0, Lcom/my/target/zf;->l:Lcom/my/target/n;

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 61
    invoke-interface {p0}, Lcom/my/target/n;->d()V

    return-void

    .line 62
    :cond_0
    invoke-interface {p0}, Lcom/my/target/n;->e()V

    return-void

    .line 63
    :cond_1
    invoke-interface {p0}, Lcom/my/target/n;->f()V

    :cond_2
    return-void
.end method

.method public final a(Lxda;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/my/target/eg;->c:Lcom/my/target/zf;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/my/target/eg;->p:Lcom/my/target/f6;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/my/target/zf;->b()V

    invoke-virtual {v1, p1}, Lcom/my/target/zf;->c(Lxda;)V

    invoke-virtual {p0}, Lcom/my/target/eg;->c()V

    const/4 p1, 0x4

    iput p1, p0, Lcom/my/target/eg;->D:I

    iget-object p1, p0, Lcom/my/target/eg;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/my/target/eg;->e:Lcom/my/target/g5;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/my/target/eg;->d:Lcom/my/target/g5;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/my/target/eg;->v:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/my/target/eg;->o:Lcom/my/target/fk;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/my/target/eg;->c:Lcom/my/target/zf;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/my/target/zf;->e(Z)V

    return-void
.end method

.method public final b(Z)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/my/target/eg;->p:Lcom/my/target/f6;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/my/target/eg;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p0, v0}, Lcom/my/target/f6;->a(Landroid/graphics/Bitmap;Z)V

    const-string p0, "sound_off"

    invoke-virtual {v1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/my/target/eg;->y:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p0, v0}, Lcom/my/target/f6;->a(Landroid/graphics/Bitmap;Z)V

    const-string p0, "sound_on"

    invoke-virtual {v1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final b()Z
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/my/target/eg;->c:Lcom/my/target/zf;

    invoke-virtual {p0}, Lcom/my/target/zf;->g()Z

    move-result p0

    return p0
.end method

.method public final c()V
    .locals 7

    iget-object v0, p0, Lcom/my/target/eg;->I:Ljava/lang/String;

    iget-object v1, p0, Lcom/my/target/eg;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget v2, p0, Lcom/my/target/eg;->w:I

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/my/target/eg;->m:Ll3a;

    invoke-virtual {v3, v2}, Ll3a;->b(F)I

    move-result v5

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v3, v2}, Ll3a;->b(F)I

    move-result v6

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/high16 v2, -0x78000000

    invoke-static/range {v1 .. v6}, Ll3a;->k(Landroid/view/View;IIIII)V

    iput-boolean v0, p0, Lcom/my/target/eg;->K:Z

    return-void
.end method

.method public final c(Z)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/my/target/eg;->c:Lcom/my/target/zf;

    invoke-virtual {v0, p1}, Lcom/my/target/zf;->a(Z)V

    .line 55
    invoke-virtual {p0}, Lcom/my/target/eg;->e()V

    return-void
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/my/target/eg;->o:Lcom/my/target/fk;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/my/target/eg;->D:I

    iget-boolean v0, p0, Lcom/my/target/eg;->H:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/eg;->b:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/my/target/eg;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/my/target/eg;->e:Lcom/my/target/g5;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/my/target/eg;->d:Lcom/my/target/g5;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final destroy()V
    .locals 0

    iget-object p0, p0, Lcom/my/target/eg;->c:Lcom/my/target/zf;

    invoke-virtual {p0}, Lcom/my/target/zf;->b()V

    return-void
.end method

.method public final e()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/my/target/eg;->D:I

    iget-object v0, p0, Lcom/my/target/eg;->b:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/my/target/eg;->e:Lcom/my/target/g5;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/my/target/eg;->d:Lcom/my/target/g5;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/my/target/eg;->v:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public getCloseButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/my/target/eg;->l:Landroid/widget/TextView;

    return-object p0
.end method

.method public getPromoMediaView()Lcom/my/target/zf;
    .locals 0

    iget-object p0, p0, Lcom/my/target/eg;->c:Lcom/my/target/zf;

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public final isPlaying()Z
    .locals 0

    iget-object p0, p0, Lcom/my/target/eg;->c:Lcom/my/target/zf;

    invoke-virtual {p0}, Lcom/my/target/zf;->h()Z

    move-result p0

    return p0
.end method

.method public final onLayout(ZIIII)V
    .locals 10

    sub-int p1, p4, p2

    sub-int p2, p5, p3

    iget-object p3, p0, Lcom/my/target/eg;->c:Lcom/my/target/zf;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v2, p1, v0

    shr-int/lit8 v2, v2, 0x1

    sub-int v3, p2, v1

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v2

    add-int/2addr v1, v3

    invoke-virtual {p3, v2, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget-object v4, p0, Lcom/my/target/eg;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    iget-object v0, p0, Lcom/my/target/eg;->e:Lcom/my/target/g5;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    shr-int/lit8 p4, p4, 0x1

    shr-int/lit8 v1, v1, 0x1

    sub-int v3, p4, v1

    shr-int/lit8 p5, p5, 0x1

    shr-int/lit8 v2, v2, 0x1

    sub-int v4, p5, v2

    add-int/2addr v1, p4

    add-int/2addr v2, p5

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    iget-object v0, p0, Lcom/my/target/eg;->d:Lcom/my/target/g5;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    shr-int/lit8 v1, v1, 0x1

    sub-int v3, p4, v1

    shr-int/lit8 v2, v2, 0x1

    sub-int v4, p5, v2

    add-int/2addr v1, p4

    add-int/2addr v2, p5

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    iget-object v0, p0, Lcom/my/target/eg;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    shr-int/lit8 v1, v1, 0x1

    sub-int v3, p4, v1

    shr-int/lit8 v2, v2, 0x1

    sub-int v4, p5, v2

    add-int/2addr p4, v1

    add-int/2addr p5, v2

    invoke-virtual {v0, v3, v4, p4, p5}, Landroid/view/View;->layout(IIII)V

    iget-object p4, p0, Lcom/my/target/eg;->l:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    iget v0, p0, Lcom/my/target/eg;->w:I

    add-int/2addr p5, v0

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p4, v0, v0, p5, v1}, Landroid/view/View;->layout(IIII)V

    iget-object p4, p0, Lcom/my/target/eg;->f:Lcom/my/target/m;

    iget-object p5, p0, Lcom/my/target/eg;->o:Lcom/my/target/fk;

    iget-object v1, p0, Lcom/my/target/eg;->n:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/my/target/eg;->j:Lcom/my/target/common/views/StarsRatingView;

    iget-object v3, p0, Lcom/my/target/eg;->i:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/my/target/eg;->p:Lcom/my/target/f6;

    iget-object v5, p0, Lcom/my/target/eg;->k:Landroid/widget/Button;

    if-le p1, p2, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {p0, v6}, Ljava/lang/Math;->max(II)I

    move-result p0

    sub-int v6, p1, v0

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int v7, p2, v0

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int v8, p0, v8

    shr-int/lit8 v8, v8, 0x1

    sub-int/2addr v7, v8

    sub-int/2addr p1, v0

    sub-int v8, p2, v0

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    sub-int v9, p0, v9

    shr-int/lit8 v9, v9, 0x1

    sub-int/2addr v8, v9

    invoke-virtual {v5, v6, v7, p1, v8}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result p1

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr p1, v6

    invoke-virtual {v4}, Lcom/my/target/f6;->getPadding()I

    move-result v6

    add-int/2addr v6, p1

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p1

    shl-int/lit8 v7, v0, 0x1

    sub-int/2addr p1, v7

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr p1, v7

    sub-int/2addr p1, p0

    invoke-virtual {v4}, Lcom/my/target/f6;->getPadding()I

    move-result v7

    add-int/2addr v7, p1

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result p1

    invoke-virtual {v4}, Lcom/my/target/f6;->getPadding()I

    move-result v8

    add-int/2addr v8, p1

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p1

    shl-int/lit8 p3, v0, 0x1

    sub-int/2addr p1, p3

    sub-int/2addr p1, p0

    invoke-virtual {v4}, Lcom/my/target/f6;->getPadding()I

    move-result p3

    add-int/2addr p3, p1

    invoke-virtual {v4, v6, v7, v8, p3}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result p1

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result p3

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p4, p1, v0, p3, v4}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p1, p3

    sub-int p3, p2, v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    sub-int p4, p0, p4

    shr-int/lit8 p4, p4, 0x1

    sub-int/2addr p3, p4

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result p4

    sub-int/2addr p4, v0

    sub-int v4, p2, v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int v6, p0, v6

    shr-int/lit8 v6, v6, 0x1

    sub-int/2addr v4, v6

    invoke-virtual {v2, p1, p3, p4, v4}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p1, p3

    sub-int p3, p2, v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    sub-int p4, p0, p4

    shr-int/lit8 p4, p4, 0x1

    sub-int/2addr p3, p4

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result p4

    sub-int/2addr p4, v0

    sub-int v4, p2, v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int v5, p0, v5

    shr-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v1, p1, p3, p4, v4}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result p3

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int p3, p1, v0

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    sub-int/2addr p3, p4

    sub-int p4, p2, v0

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p4, v1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, p0, v1

    shr-int/lit8 v1, v1, 0x1

    sub-int/2addr p4, v1

    sub-int/2addr p1, v0

    sub-int v1, p2, v0

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v2, p0, v2

    shr-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v3, p3, p4, p1, v1}, Landroid/view/View;->layout(IIII)V

    sub-int p1, p2, v0

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    sub-int p3, p0, p3

    shr-int/lit8 p3, p3, 0x1

    sub-int/2addr p1, p3

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, v0

    sub-int/2addr p2, v0

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    sub-int/2addr p0, p4

    shr-int/lit8 p0, p0, 0x1

    sub-int/2addr p2, p0

    invoke-virtual {p5, v0, p1, p3, p2}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr p2, v6

    invoke-virtual {v4}, Lcom/my/target/f6;->getPadding()I

    move-result v6

    add-int/2addr v6, p2

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr p2, v7

    invoke-virtual {v4}, Lcom/my/target/f6;->getPadding()I

    move-result v7

    add-int/2addr v7, p2

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {v4}, Lcom/my/target/f6;->getPadding()I

    move-result v8

    add-int/2addr v8, p2

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {v4}, Lcom/my/target/f6;->getPadding()I

    move-result v9

    add-int/2addr v9, p2

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr p2, v4

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {p4, p2, v4, v6, v8}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p4, p2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, p4

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p2

    sub-int/2addr p0, p2

    mul-int/lit8 p2, v0, 0x3

    add-int/2addr p2, p4

    if-le p2, p0, :cond_1

    sub-int/2addr p0, p4

    div-int/lit8 p0, p0, 0x3

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    shr-int/lit8 p1, p1, 0x1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    shr-int/lit8 p2, p2, 0x1

    sub-int p2, p1, p2

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p4

    add-int/2addr p4, p0

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    add-int/2addr v4, p1

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v6

    add-int/2addr v6, p0

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v3, p2, p4, v4, v7}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    shr-int/lit8 p2, p2, 0x1

    sub-int p2, p1, p2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result p4

    add-int/2addr p4, p0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    add-int/2addr v4, p1

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v6

    add-int/2addr v6, p0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v2, p2, p4, v4, v7}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    shr-int/lit8 p2, p2, 0x1

    sub-int p2, p1, p2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result p4

    add-int/2addr p4, p0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    add-int/2addr v4, p1

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, p0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v1, p2, p4, v4, v6}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    shr-int/lit8 p2, p2, 0x1

    sub-int p2, p1, p2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result p4

    add-int/2addr p4, p0

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr p1, v1

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, p0

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, v1

    invoke-virtual {v5, p2, p4, p1, p0}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p0

    sub-int/2addr p0, v0

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p0, p1

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p5, v0, p0, p1, p2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 13

    iget v0, p0, Lcom/my/target/eg;->A:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/eg;->p:Lcom/my/target/f6;

    invoke-virtual {v4, v2, v3}, Landroid/view/View;->measure(II)V

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/eg;->o:Lcom/my/target/fk;

    invoke-virtual {v4, v2, v3}, Landroid/view/View;->measure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, -0x80000000

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget-object v6, p0, Lcom/my/target/eg;->c:Lcom/my/target/zf;

    invoke-virtual {v6, v3, v5}, Landroid/view/View;->measure(II)V

    iget v3, p0, Lcom/my/target/eg;->w:I

    shl-int/lit8 v5, v3, 0x1

    sub-int v7, p1, v5

    sub-int v5, p2, v5

    div-int/lit8 v8, v7, 0x2

    invoke-static {v8, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    iget-object v10, p0, Lcom/my/target/eg;->l:Landroid/widget/TextView;

    invoke-virtual {v10, v8, v9}, Landroid/view/View;->measure(II)V

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v9, p0, Lcom/my/target/eg;->f:Lcom/my/target/m;

    invoke-virtual {v9, v8, v0}, Landroid/view/View;->measure(II)V

    invoke-static {v7, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget-object v9, p0, Lcom/my/target/eg;->d:Lcom/my/target/g5;

    invoke-virtual {v9, v0, v8}, Landroid/view/View;->measure(II)V

    invoke-static {v7, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget-object v9, p0, Lcom/my/target/eg;->e:Lcom/my/target/g5;

    invoke-virtual {v9, v0, v8}, Landroid/view/View;->measure(II)V

    invoke-static {v7, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget-object v9, p0, Lcom/my/target/eg;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v0, v8}, Landroid/view/View;->measure(II)V

    invoke-static {v7, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget-object v9, p0, Lcom/my/target/eg;->j:Lcom/my/target/common/views/StarsRatingView;

    invoke-virtual {v9, v0, v8}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v8, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v8, p0, Lcom/my/target/eg;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v0, v1}, Landroid/view/View;->measure(II)V

    invoke-static {v7, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v8, p0, Lcom/my/target/eg;->k:Landroid/widget/Button;

    invoke-virtual {v8, v0, v1}, Landroid/view/View;->measure(II)V

    invoke-static {v7, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v10, p0, Lcom/my/target/eg;->i:Landroid/widget/TextView;

    invoke-virtual {v10, v0, v1}, Landroid/view/View;->measure(II)V

    invoke-static {v7, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v11, p0, Lcom/my/target/eg;->n:Landroid/widget/TextView;

    invoke-virtual {v11, v0, v1}, Landroid/view/View;->measure(II)V

    if-le p1, p2, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v12, v1

    add-int/2addr v12, v6

    add-int/2addr v12, v0

    mul-int/lit8 v0, v3, 0x3

    add-int/2addr v0, v12

    if-le v0, v7, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v7, v0

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v7, v3

    div-int/lit8 v0, v7, 0x3

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v8, v1, v3}, Landroid/view/View;->measure(II)V

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v9, v1, v3}, Landroid/view/View;->measure(II)V

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v11, v0, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v7, v0

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v7, v0

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v7, v0

    invoke-static {v7, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v10, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v0, p2, v0

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v4, v3, 0x3

    add-int/2addr v4, v1

    if-le v4, v0, :cond_1

    div-int/lit8 v0, v3, 0x2

    invoke-virtual {v8, v3, v0, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    invoke-static {v7, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/view/View;->measure(II)V

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final pause()V
    .locals 3

    iget v0, p0, Lcom/my/target/eg;->D:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/my/target/eg;->D:I

    iget-object v0, p0, Lcom/my/target/eg;->b:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/my/target/eg;->e:Lcom/my/target/g5;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/my/target/eg;->d:Lcom/my/target/g5;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/my/target/eg;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/my/target/eg;->c:Lcom/my/target/zf;

    invoke-virtual {p0}, Lcom/my/target/zf;->i()V

    return-void
.end method

.method public final resume()V
    .locals 3

    iget-object p0, p0, Lcom/my/target/eg;->c:Lcom/my/target/zf;

    iget-object v0, p0, Lcom/my/target/zf;->d:Lcom/my/target/f6;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/my/target/zf;->l:Lcom/my/target/n;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/my/target/zf;->m:Lrn9;

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lcom/my/target/n;->resume()V

    iget-object p0, p0, Lcom/my/target/zf;->b:Lcom/my/target/zh;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBanner(Lxda;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lao9;->Q:Lpp9;

    iget-boolean v2, v2, Lpp9;->c:Z

    iput-boolean v2, v0, Lcom/my/target/eg;->N:Z

    iget-object v2, v0, Lcom/my/target/eg;->c:Lcom/my/target/zf;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/my/target/zf;->d(Lxda;I)V

    iget-object v2, v1, Lxda;->Z:Lkha;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v4, v0, Lcom/my/target/eg;->o:Lcom/my/target/fk;

    iget v5, v1, Lao9;->z:F

    invoke-virtual {v4, v5}, Lcom/my/target/fk;->setMax(F)V

    iget-boolean v4, v2, Lkha;->a0:Z

    iput-boolean v4, v0, Lcom/my/target/eg;->H:Z

    iget-boolean v4, v1, Ljia;->V:Z

    iput-boolean v4, v0, Lcom/my/target/eg;->G:Z

    iget-boolean v4, v2, Lkha;->e0:Z

    iput-boolean v4, v0, Lcom/my/target/eg;->L:Z

    iget-object v4, v0, Lcom/my/target/eg;->k:Landroid/widget/Button;

    invoke-virtual {v1}, Lao9;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/my/target/eg;->i:Landroid/widget/TextView;

    iget-object v5, v1, Lao9;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lao9;->m:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, -0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "webform"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move v8, v6

    goto :goto_0

    :sswitch_1
    const-string v5, "store"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    move v8, v3

    goto :goto_0

    :sswitch_2
    const-string v5, "web"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    move v8, v7

    :goto_0
    const/4 v4, 0x0

    iget-object v5, v0, Lcom/my/target/eg;->n:Landroid/widget/TextView;

    iget-object v9, v0, Lcom/my/target/eg;->j:Lcom/my/target/common/views/StarsRatingView;

    const/16 v10, 0x8

    packed-switch v8, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {v1}, Lao9;->b()F

    move-result v8

    cmpl-float v8, v8, v4

    if-lez v8, :cond_4

    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Lao9;->b()F

    move-result v8

    invoke-virtual {v9, v8}, Lcom/my/target/common/views/StarsRatingView;->setRating(F)V

    goto :goto_1

    :cond_4
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :pswitch_1
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, v1, Lao9;->l:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v5, v2, Lkha;->T:Ljava/lang/String;

    iput-object v5, v0, Lcom/my/target/eg;->I:Ljava/lang/String;

    iget-object v8, v2, Lkha;->V:Ljava/lang/String;

    iput-object v8, v0, Lcom/my/target/eg;->J:Ljava/lang/String;

    iget-object v11, v0, Lcom/my/target/eg;->l:Landroid/widget/TextView;

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v5, v2, Lkha;->c0:Z

    if-eqz v5, :cond_6

    iget-boolean v5, v2, Lkha;->Y:Z

    if-eqz v5, :cond_6

    iget v5, v2, Lkha;->f0:F

    cmpl-float v4, v5, v4

    if-lez v4, :cond_5

    iput v5, v0, Lcom/my/target/eg;->F:F

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    const v4, -0x333334

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget v4, v0, Lcom/my/target/eg;->x:I

    invoke-virtual {v11, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v5, v0, Lcom/my/target/eg;->m:Ll3a;

    invoke-virtual {v5, v4}, Ll3a;->b(F)I

    move-result v15

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {v5, v4}, Ll3a;->b(F)I

    move-result v16

    const/high16 v13, -0x78000000

    const v14, -0x333334

    const/high16 v12, -0x78000000

    invoke-static/range {v11 .. v16}, Ll3a;->k(Landroid/view/View;IIIII)V

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v11, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_3

    :cond_5
    iget v4, v0, Lcom/my/target/eg;->w:I

    invoke-virtual {v11, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v11, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_3
    iget-object v4, v0, Lcom/my/target/eg;->u:Landroid/widget/TextView;

    iget-object v5, v2, Lkha;->U:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    const-string v4, "iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH4AMXCjM59gfMOgAAA59JREFUeNrtmkloFEEUhl/N6KgxriiJOHEXF4gENYlgRFA8uyAoCNGggl68CCJ6EQx6cCFqUFzABQQRMYh4EfSi4IJbiFERQVxRgxuRMWri5yE1UBY9yWh6Znq6+z+96a6ZV/8/tbz3qkRChAgRwiMAFgJngWgQyVcDHXTiFKCCRH4Df6MFKAkK+W0W+VfAxCAQV8A+i/wTIB4E8lHgpEX+LjA8COQHAM8t8o3ATKC338kXA59IjXbgEVAPLAb6+k2AHRbhVrrGV+AwMNVPIpx3INncjRi/gTPAWL+IcMIieBGIAXFgGXAU+OggRALY7ItIEdhvkTsNRIz3MWCp3h1sXAGK/RAHnLKIHUzRdgnwwmr7Epjsh3jggkWsNkXbQuC4Q8g8Ld9F6ANctYht7KL9GiNpAnib94ujDo5uaUIdwMo00uafhghNQL98F2EYcA9YlGb75daoOeqHnSHyj+23WyLMC1oRJQpct7LJXkETYSrwyxBhlQQNwAFrFKigCTDK2hXmBnEUnDMEOBZEARYaArwLogAF1jRIq4YQ8YsASqmEiNw2HpUHSgCNB4Y9KYgCPDXs8UEU4LNhF6bzhW7DRmCEiFTqjx+VUtc8LECrYfd3RQA9lxq03SgiZR4WIGbYv9yaAt8Me5DHp8DAFP3ukQDvDTvu8WxrnGG/dUUApdQrEUkYU2a8hwWYnGJH6PEu0GzYczwaCSoRqTIeNbkpwFXDnu/Rf79URJKnyz9E5Kab6i4wYuxvQKEHR8BO8+DE7R+PAu8MB6s9Rj4GvDH6tzYTTvZaVZeIhwSoMfr2HRiUCSd21aXGI+T7WRcu6jLp7Ijh6AMw1AMCmKXxtozeLgOKgC+Gw4ZcFiCB2fpWSRLbsuF0nXUYsSlH5EfqE+IknmblSo0+1m6wRKjOMvnB+jzQHPpl2ezAEOCx0YEOYH2WfMct8rlZkIES4LXVkXqgTwZ9Vjn43JrLFXgC8Mzq0H2g0mU/BTrSa7d8bfHCPlwE3HC41XWyp9fbdIS3Tt8fxprzq7wUivYGdmnithCXgRXpxgw67K4A9ljhdxKPgVK3+q5cFqJcRA6JyAyn1zpFfaBz9RZdtYnpStNonc/PEpEhDt9vE5FaEdmtlPrh2YoEEAEWpbje9j9o1aNrhOQbgOlAncNC2R0SwCVgZaZTb5VFMUpEpEJEpojIGBEZLJ21+zbpLGe3iMgTEXkoIneUUj8lRIgQIUKECJFJ/AEepzU1TSID5QAAAABJRU5ErkJggg=="

    const/16 v5, 0x1a4

    invoke-static {v5, v4}, Lwfa;->a(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v5, v0, Lcom/my/target/eg;->q:Lcom/my/target/g5;

    invoke-virtual {v5, v4}, Lcom/my/target/g5;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_7
    iget-boolean v4, v2, Lkha;->Y:Z

    if-eqz v4, :cond_8

    invoke-virtual {v0, v3}, Lcom/my/target/eg;->c(Z)V

    invoke-virtual {v0}, Lcom/my/target/eg;->e()V

    goto :goto_4

    :cond_8
    iput v3, v0, Lcom/my/target/eg;->D:I

    iget-object v4, v0, Lcom/my/target/eg;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Lcom/my/target/eg;->e:Lcom/my/target/g5;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Lcom/my/target/eg;->d:Lcom/my/target/g5;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Lcom/my/target/eg;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    iget v4, v2, Lao9;->z:F

    iput v4, v0, Lcom/my/target/eg;->E:F

    new-instance v4, Lbd8;

    invoke-direct {v4, v0, v3}, Lbd8;-><init>(Ljava/lang/Object;I)V

    iget-object v3, v0, Lcom/my/target/eg;->p:Lcom/my/target/f6;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v2, v2, Lkha;->X:Z

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/my/target/eg;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v2, v7}, Lcom/my/target/f6;->a(Landroid/graphics/Bitmap;Z)V

    const-string v2, "sound_off"

    invoke-virtual {v3, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_9
    iget-object v2, v0, Lcom/my/target/eg;->y:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v2, v7}, Lcom/my/target/f6;->a(Landroid/graphics/Bitmap;Z)V

    const-string v2, "sound_on"

    invoke-virtual {v3, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_5
    iget-object v1, v1, Lao9;->H:Lcom/my/target/q;

    iget-object v2, v0, Lcom/my/target/eg;->f:Lcom/my/target/m;

    if-eqz v1, :cond_a

    iget-object v1, v1, Lcom/my/target/q;->a:Lh14;

    iget-object v1, v1, Lxha;->d:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1}, Lcom/my/target/m;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, v0, Lcom/my/target/eg;->s:Lcom/my/target/eg$a;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_a
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1cb54 -> :sswitch_2
        0x68af8e1 -> :sswitch_1
        0x48f40e18 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setClickArea(Lt2a;)V
    .locals 1

    iget-boolean v0, p0, Lcom/my/target/eg;->N:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/my/target/eg;->setClickAreaActual(Lt2a;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/my/target/eg;->setClickAreaLegacy(Lt2a;)V

    return-void
.end method

.method public setInterstitialPromoViewListener(Lcom/my/target/l$a;)V
    .locals 0

    iput-object p1, p0, Lcom/my/target/eg;->B:Lcom/my/target/l$a;

    return-void
.end method

.method public setMediaListener(Lcom/my/target/r0$a;)V
    .locals 0

    iput-object p1, p0, Lcom/my/target/eg;->C:Lcom/my/target/r0$a;

    iget-object p0, p0, Lcom/my/target/eg;->c:Lcom/my/target/zf;

    invoke-virtual {p0, p1}, Lcom/my/target/zf;->setInterstitialPromoViewListener(Lcom/my/target/zf$a;)V

    return-void
.end method

.method public setTimeChanged(F)V
    .locals 6

    iget-boolean v0, p0, Lcom/my/target/eg;->K:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/my/target/eg;->G:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/my/target/eg;->F:F

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    cmpl-float v0, v0, p1

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/my/target/eg;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/my/target/eg;->J:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/my/target/eg;->F:F

    sub-float/2addr v2, p1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/my/target/eg;->F:F

    const/high16 v5, 0x41100000    # 9.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    const/16 v4, 0x9

    if-gt v2, v4, :cond_1

    const-string v2, "0"

    invoke-static {v2, v3}, Lbj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    iget-object v2, p0, Lcom/my/target/eg;->J:Ljava/lang/String;

    const-string v4, "%d"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/my/target/eg;->o:Lcom/my/target/fk;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget v1, p0, Lcom/my/target/eg;->E:F

    div-float v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/my/target/fk;->setProgress(F)V

    iget p0, p0, Lcom/my/target/eg;->E:F

    sub-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    invoke-virtual {v0, p0}, Lcom/my/target/fk;->setDigit(I)V

    return-void
.end method
