.class public abstract Lcom/my/target/hg;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lgw9;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final synthetic S:I


# instance fields
.field public final A:Lcom/my/target/c1;

.field public final B:I

.field public final C:I

.field public final D:I

.field public final E:I

.field public final F:I

.field public final G:I

.field public final H:I

.field public final I:I

.field public final J:I

.field public final K:I

.field public final L:Landroid/view/View;

.field public M:I

.field public N:I

.field public final O:I

.field public P:I

.field public Q:Le6a;

.field public R:Z

.field public final b:Lcom/my/target/e6;

.field public final c:Lon9;

.field public final d:Lcom/my/target/e6;

.field public final e:Lcom/my/target/bg;

.field public final f:Lcom/my/target/dg;

.field public final g:Lcom/my/target/c3;

.field public final h:Lcom/my/target/g5;

.field public final i:Landroid/widget/Button;

.field public final j:Lcom/my/target/zh;

.field public final k:Lcom/my/target/zh;

.field public final l:Lcom/my/target/m;

.field public final m:Landroid/widget/ProgressBar;

.field public final n:Landroid/view/View;

.field public final o:Landroid/view/View;

.field public final p:Landroid/view/View;

.field public final q:Landroid/widget/Button;

.field public final r:Landroid/widget/TextView;

.field public final s:Landroid/widget/TextView;

.field public final t:Landroid/widget/TextView;

.field public final u:Lcom/my/target/fk;

.field public final v:Landroid/graphics/Bitmap;

.field public final w:Landroid/graphics/Bitmap;

.field public final x:Landroid/graphics/Bitmap;

.field public final y:Landroid/graphics/Bitmap;

.field public final z:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/my/target/bg;Lcom/my/target/dg;Lcom/my/target/c3;Landroid/view/View;Lon9;Landroid/content/Context;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v0, v3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/my/target/c1;

    new-instance v5, Lz3;

    const/4 v6, 0x4

    invoke-direct {v5, v0, v6}, Lz3;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v4, v5}, Lcom/my/target/c1;-><init>(Lcom/my/target/c1$a;)V

    iput-object v4, v0, Lcom/my/target/hg;->A:Lcom/my/target/c1;

    new-instance v4, Ld6a;

    invoke-direct {v4}, Le6a;-><init>()V

    iput-object v4, v0, Lcom/my/target/hg;->Q:Le6a;

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/my/target/hg;->R:Z

    move-object/from16 v5, p3

    iput-object v5, v0, Lcom/my/target/hg;->g:Lcom/my/target/c3;

    iput-object v1, v0, Lcom/my/target/hg;->L:Landroid/view/View;

    move-object/from16 v5, p2

    iput-object v5, v0, Lcom/my/target/hg;->f:Lcom/my/target/dg;

    move-object/from16 v5, p1

    iput-object v5, v0, Lcom/my/target/hg;->e:Lcom/my/target/bg;

    iput-object v2, v0, Lcom/my/target/hg;->c:Lon9;

    sget v6, Lon9;->j:I

    iget-object v2, v2, Lon9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    iput v6, v0, Lcom/my/target/hg;->F:I

    sget v7, Lon9;->V:I

    invoke-virtual {v2, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    sget v8, Lon9;->T:I

    invoke-virtual {v2, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    iput v8, v0, Lcom/my/target/hg;->I:I

    sget v8, Lon9;->H:I

    invoke-virtual {v2, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    iput v8, v0, Lcom/my/target/hg;->J:I

    sget v8, Lon9;->W:I

    invoke-virtual {v2, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    iput v8, v0, Lcom/my/target/hg;->K:I

    sget v8, Lon9;->Y:I

    invoke-virtual {v2, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    iput v8, v0, Lcom/my/target/hg;->G:I

    new-instance v8, Lcom/my/target/e6;

    invoke-direct {v8, v3}, Lcom/my/target/e6;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lcom/my/target/hg;->d:Lcom/my/target/e6;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8, v6}, Lcom/my/target/e6;->setPadding(I)V

    new-instance v10, Lcom/my/target/g5;

    invoke-direct {v10, v3}, Lcom/my/target/g5;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lcom/my/target/hg;->h:Lcom/my/target/g5;

    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v11, Lon9;->e:I

    invoke-virtual {v2, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v14

    sget v11, Lon9;->f:I

    invoke-virtual {v2, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v15

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/high16 v11, -0x78000000

    invoke-static/range {v10 .. v15}, Ll3a;->k(Landroid/view/View;IIIII)V

    new-instance v11, Landroid/widget/Button;

    invoke-direct {v11, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lcom/my/target/hg;->i:Landroid/widget/Button;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    sget v13, Lon9;->g:I

    invoke-virtual {v2, v13}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setLines(I)V

    sget v13, Lon9;->h:I

    invoke-virtual {v2, v13}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    int-to-float v13, v13

    const/4 v14, 0x1

    invoke-virtual {v11, v14, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v13, Lon9;->d:I

    invoke-virtual {v2, v13}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setMaxWidth(I)V

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v11, v4}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    sget v11, Lon9;->i:I

    invoke-virtual {v2, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    iput v11, v0, Lcom/my/target/hg;->B:I

    sget v13, Lon9;->m:I

    invoke-virtual {v2, v13}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    iput v13, v0, Lcom/my/target/hg;->C:I

    sget v13, Lon9;->n:I

    invoke-virtual {v2, v13}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    iput v13, v0, Lcom/my/target/hg;->D:I

    sget v13, Lon9;->r:I

    invoke-virtual {v2, v13}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    iput v13, v0, Lcom/my/target/hg;->E:I

    sget v15, Lon9;->o:I

    invoke-virtual {v2, v15}, Landroid/util/SparseIntArray;->get(I)I

    move-result v15

    iput v15, v0, Lcom/my/target/hg;->O:I

    sget v15, Lon9;->p:I

    invoke-virtual {v2, v15}, Landroid/util/SparseIntArray;->get(I)I

    move-result v15

    iput v15, v0, Lcom/my/target/hg;->H:I

    new-instance v15, Lcom/my/target/m;

    invoke-direct {v15, v3}, Lcom/my/target/m;-><init>(Landroid/content/Context;)V

    iput-object v15, v0, Lcom/my/target/hg;->l:Lcom/my/target/m;

    invoke-virtual {v15, v13}, Lcom/my/target/m;->setFixedHeight(I)V

    const/16 v13, 0x1a4

    const-string v4, "iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH4AMXCy8fw79+rQAAAhVJREFUeNrt2y9IXlEYx3H3ooIiiCAIC4JgMRgsCyaLwWaxLK0srZhWVtYWVtYWlpYMNsvK0sKKRTANBivDIIggIiLiZ+URDncHFgzbznN+8d77nvPwvec99zz/xsa6uv4oPMWjzADgK55kBnCvj3icGQBc4hWmsgK41w/sZAPwswLiC9ayAJjGa1wNrt/hAxaaBlBcW8ReZTVc4CUmmwZQ3FvHYQXEd2w3DyDuj/AMJxUQn7HaNIDiuRm8wfUAwi3eY75pAMXzS9ivrIZz7GKiaQDF7zZwVAHxDVvNAyj2h+c4rYD4hJWmARRjzOItbir7wzvMNQ2gGGsZB5XVcIYXGG8aQDHmJo4rII6x2TyAGHc83vpZBcQBlpsGUIw/F/vA7QDCTewbs00DKOZZiS/DUKfxJRk1DaCYbyvOCkMdYaN5ADHnRJwazysg9rHUNIBi7vnwI4b7w3X4HTNNAyhsWA3PcqiT8ERHTQMobNmOWMNQh1hvHkDYMxlRp4sKiD0sNg2gsGsh4pB3AwhXEbecbhpAYd9aRKZVItgPT+v96wAKO3ciVzHUw9J6/wuAsHUqslaXFRC/pfVGY139L9A3wf4Z7AehfhTuzlB3h3tApIfE/jqAtEHRtGHx1ImRtKmxtMnRtOnx1AUSaUtk0hZJpS2TS10ombZUNm2xdPpy+d4w0VtmetNU2ra51I2TuVtnuxrWL/YiKQ6CN9uRAAAAAElFTkSuQmCC"

    invoke-static {v13, v4}, Lwfa;->a(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v0, Lcom/my/target/hg;->x:Landroid/graphics/Bitmap;

    const-string v4, "iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH4AMXCjM59gfMOgAAA59JREFUeNrtmkloFEEUhl/N6KgxriiJOHEXF4gENYlgRFA8uyAoCNGggl68CCJ6EQx6cCFqUFzABQQRMYh4EfSi4IJbiFERQVxRgxuRMWri5yE1UBY9yWh6Znq6+z+96a6ZV/8/tbz3qkRChAgRwiMAFgJngWgQyVcDHXTiFKCCRH4Df6MFKAkK+W0W+VfAxCAQV8A+i/wTIB4E8lHgpEX+LjA8COQHAM8t8o3ATKC338kXA59IjXbgEVAPLAb6+k2AHRbhVrrGV+AwMNVPIpx3INncjRi/gTPAWL+IcMIieBGIAXFgGXAU+OggRALY7ItIEdhvkTsNRIz3MWCp3h1sXAGK/RAHnLKIHUzRdgnwwmr7Epjsh3jggkWsNkXbQuC4Q8g8Ld9F6ANctYht7KL9GiNpAnib94ujDo5uaUIdwMo00uafhghNQL98F2EYcA9YlGb75daoOeqHnSHyj+23WyLMC1oRJQpct7LJXkETYSrwyxBhlQQNwAFrFKigCTDK2hXmBnEUnDMEOBZEARYaArwLogAF1jRIq4YQ8YsASqmEiNw2HpUHSgCNB4Y9KYgCPDXs8UEU4LNhF6bzhW7DRmCEiFTqjx+VUtc8LECrYfd3RQA9lxq03SgiZR4WIGbYv9yaAt8Me5DHp8DAFP3ukQDvDTvu8WxrnGG/dUUApdQrEUkYU2a8hwWYnGJH6PEu0GzYczwaCSoRqTIeNbkpwFXDnu/Rf79URJKnyz9E5Kab6i4wYuxvQKEHR8BO8+DE7R+PAu8MB6s9Rj4GvDH6tzYTTvZaVZeIhwSoMfr2HRiUCSd21aXGI+T7WRcu6jLp7Ijh6AMw1AMCmKXxtozeLgOKgC+Gw4ZcFiCB2fpWSRLbsuF0nXUYsSlH5EfqE+IknmblSo0+1m6wRKjOMvnB+jzQHPpl2ezAEOCx0YEOYH2WfMct8rlZkIES4LXVkXqgTwZ9Vjn43JrLFXgC8Mzq0H2g0mU/BTrSa7d8bfHCPlwE3HC41XWyp9fbdIS3Tt8fxprzq7wUivYGdmnithCXgRXpxgw67K4A9ljhdxKPgVK3+q5cFqJcRA6JyAyn1zpFfaBz9RZdtYnpStNonc/PEpEhDt9vE5FaEdmtlPrh2YoEEAEWpbje9j9o1aNrhOQbgOlAncNC2R0SwCVgZaZTb5VFMUpEpEJEpojIGBEZLJ21+zbpLGe3iMgTEXkoIneUUj8lRIgQIUKECJFJ/AEepzU1TSID5QAAAABJRU5ErkJggg=="

    invoke-static {v13, v4}, Lwfa;->a(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v0, Lcom/my/target/hg;->y:Landroid/graphics/Bitmap;

    const-string v4, "iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH4AMXCjITNKc0rQAAAJFJREFUeNrt2tENgCAMQEEwLuD+QzpC3cBURWLsvV+JNRfhi9YkSSpbP3sYETF0WO89s27m3KX6H1AeYL2wdrs5Y3/4ja/OTZ8B2f074h0z5zoDAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/lr6rvDoK+xfmWsLNEmSVLUD47EiX/OuE8UAAAAASUVORK5CYII="

    invoke-static {v13, v4}, Lwfa;->a(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v0, Lcom/my/target/hg;->z:Landroid/graphics/Bitmap;

    const/16 v4, 0x140

    const-string v13, "iVBORw0KGgoAAAANSUhEUgAAADgAAAA4CAMAAACfWMssAAAAdVBMVEUAAAAAAAAgICDf398QEBDv7+/Pz8+fn58gICAQEBDe3t5AQEBwcHDv7+9/f3/f398wMDCAgIBgYGCQkJDAwMC/v7/Pz8+fn59QUFBAQECvr69QUFCPj4+/v79wcHBvb29gYGBfX1++vr6urq6Ojo5hYWH///+8blWlAAAAJnRSTlOAAJDviPfnzyAQ3qC478DfmICvx9/fz59QQK+oj79wb2Bfvq6OsPCmZBAAAAJhSURBVEjHndbXYuIwEAXQiSQXueAGtmkhJNn7/5+4I8JmbJAWw33iQYex7FGhN0/s9jT0FTjVcXfavvlC92o8lpil3J0fQ9s4FXdtrYij8qKLXeUhDUFhm8LQLKp1tknDcKyY5eRJnQDZOQDtwcOkrAa+rQ+mPaKC/pMiQpbew7SCVgEiRUWSuNjQg5hYJP26hBYkYTmFluvRosTo7QQeoM0yaDS+BX4gUrQwKsJ4hW6CRfBF6ruvgsxeYROcYB4BdJs1mh+YAoEHXQEemKO0FzgEvoRJAKbkL8mwQh3okygnhv6SxK80DkxPKxI4Lzky3KH1Ty8x9AM14mQ/f7GfDEso//SIfiEwWwEGpaUtYhke4Ro3vX+QU//hCdfTxtvSOzrpYIkigS6mm3ZXh3faSddEN8PlUTet+9vNL2wx0BH5ZFAAuhmbSEbW6KmCegTJFGC0kkZRyGRMEHIYbXi0ngxdCA0i9/sViNdggQ3ViCdDl72cFdBSO385PeqFn0NjL+vjkwa0DxsgcidDBz3p8t3ilktuWi7U5Ho/hWoV3TW5LWGWLKuN1COFktfjEcXDhayT2fHXYsdwxJo82evw1hHjzNCWyAObld57YY3ssss1WD+3PSYYHJSSCzdkBaQOSknfRD1QX48ALpk9eeikF8gZnzvmzi8erIfpUd4vP8ozO7s8ZK9dHpx8+roi8skLksjHV7I+DV0C42DRfA0cbODa+ZEBSR1i2Ri+6KYNuGp7U9YUzMpGygmc0CFztivyi1Z128UQ5oPywF+3l/njKEygL9vT12cGTtUPp631DfkLyeFPR/ZOiKIAAAAASUVORK5CYII="

    invoke-static {v4, v13}, Lwfa;->a(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    iput-object v13, v0, Lcom/my/target/hg;->v:Landroid/graphics/Bitmap;

    const-string v13, "iVBORw0KGgoAAAANSUhEUgAAADgAAAA4CAMAAACfWMssAAAAclBMVEUAAAAAAAAgICDf39+goKAgICAQEBDe3t7Pz88QEBDv7+9wcHBAQEDf39+AgIDv7+/AwMCQkJDPz8+/v7+vr69gYGCfn5+Pj49fX19QUFBAQEAwMDBQUFDu7u5/f39/f39wcHBvb2+/v78wMDCvr6////9R0hTPAAAAJXRSTlOAAJDvzyAQ3ueI97ig34Dv38fPv6+vn49fUECYqO7Av3Bv35fYiozA+AAAAjJJREFUSMe91um2mjAUBeBDGMOkjDJoe63d7/+KTbyxpzZJgXat7j8i8nkICUkocCRZ7mNbQaXq+vsSuEK2mrsT3nLqp22Y1FplzbAKUhFl0WS68hj7ILNvhaS3iEHbOvbDuVKsJEfWCEgnD0wuzOyIELgkLhi3yAv6Q4ocaWzDuEIoPISLsiR2maSNyIwl/XQR7Uj0lAwTVY92JUOb/AIvCOU+KENcGE7IBe2MyDEbqBtYeB9kaPUK0sTA2tvAMgesk2fUnzAGhNt9ARywxC15wtHTEzICvhpoldSwwuoZJ3lJBlolFZyQeZoXCjLQKjkr2GNwNy+S5IEFOgVPEO7mEfmgVPdKCzK+PIeJbp4fUoaFPtDwCOYIYihfXx5k0uCDeh41+dvlfBSGwvzx1ZwdMFKHki9yH0VQ0nx8ZkVLFcQGNIQdkUCqf9mEGrHTAXZBLdn9Fxgh/P4mgb9/OC3WLdhY3VGioxHD8QFQoN8z5IR89TvxkPMN8vC6NciTE+TR10rgFlDQoTj6Ig/oFZxxJkeuoX/qyDApqO61dEmh5NUJV6TPWa7G+dj0GGHUkEvunJAFEGvIJZ0NtWFolgBVMj246MQGBvOxZW7694U1SNr9S3mavG0e0uObh5c8vF1heXCDxHJ7S9bGvk1g5i1anq1NIGdKgejhY+ns3+jGNYBs+K2sLBQ71UnggEzHVNumKJ9aPIYmAzMH5Ez9DRytupkZQ1eWe9+l2lTteF+UsvMDBKFIvMRHIr8AAAAASUVORK5CYII="

    invoke-static {v4, v13}, Lwfa;->a(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v0, Lcom/my/target/hg;->w:Landroid/graphics/Bitmap;

    new-instance v4, Lcom/my/target/zh;

    invoke-direct {v4, v3}, Lcom/my/target/zh;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/my/target/hg;->j:Lcom/my/target/zh;

    new-instance v13, Landroid/widget/ProgressBar;

    const/4 v12, 0x0

    const v14, 0x101007a

    invoke-direct {v13, v3, v12, v14}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v13, v0, Lcom/my/target/hg;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v13, v9}, Landroid/view/View;->setVisibility(I)V

    new-instance v12, Landroid/view/View;

    invoke-direct {v12, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lcom/my/target/hg;->n:Landroid/view/View;

    const/high16 v13, -0x67000000

    invoke-virtual {v12, v13}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v12, v9}, Landroid/view/View;->setVisibility(I)V

    new-instance v9, Landroid/view/View;

    invoke-direct {v9, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/my/target/hg;->p:Landroid/view/View;

    new-instance v13, Landroid/view/View;

    invoke-direct {v13, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v13, v0, Lcom/my/target/hg;->o:Landroid/view/View;

    new-instance v14, Landroid/widget/TextView;

    invoke-direct {v14, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v14, v0, Lcom/my/target/hg;->r:Landroid/widget/TextView;

    sget v5, Lon9;->s:I

    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    int-to-float v5, v5

    const/4 v1, 0x1

    invoke-virtual {v14, v1, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v1, -0x1

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setTextColor(I)V

    sget v1, Lon9;->t:I

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v5, 0x11

    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v5, 0x0

    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/my/target/hg;->s:Landroid/widget/TextView;

    move-object/from16 v16, v15

    sget v15, Lon9;->u:I

    invoke-virtual {v2, v15}, Landroid/util/SparseIntArray;->get(I)I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v17, v9

    const/4 v9, 0x1

    invoke-virtual {v5, v9, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v15, -0x1

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setTextColor(I)V

    sget v15, Lon9;->v:I

    invoke-virtual {v2, v15}, Landroid/util/SparseIntArray;->get(I)I

    move-result v15

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v15, 0x11

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    new-instance v15, Landroid/widget/Button;

    invoke-direct {v15, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v15, v0, Lcom/my/target/hg;->q:Landroid/widget/Button;

    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setLines(I)V

    sget v9, Lon9;->w:I

    invoke-virtual {v2, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    int-to-float v9, v9

    move-object/from16 p5, v13

    const/4 v13, 0x1

    invoke-virtual {v15, v13, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    invoke-virtual {v15, v7}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {v15, v11, v1, v11, v1}, Landroid/view/View;->setPadding(IIII)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/my/target/hg;->t:Landroid/widget/TextView;

    sget v9, Lon9;->y:I

    invoke-virtual {v2, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    invoke-virtual {v7, v9, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v9, -0x1

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    sget v9, Lon9;->B:I

    invoke-virtual {v2, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    sget v1, Lon9;->X:I

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v9, 0x1

    invoke-virtual {v7, v9, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v1, Lcom/my/target/fk;

    invoke-direct {v1, v3}, Lcom/my/target/fk;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/my/target/hg;->u:Lcom/my/target/fk;

    new-instance v2, Lcom/my/target/e6;

    invoke-direct {v2, v3}, Lcom/my/target/e6;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/my/target/hg;->b:Lcom/my/target/e6;

    invoke-virtual {v2, v6}, Lcom/my/target/e6;->setPadding(I)V

    new-instance v6, Lcom/my/target/zh;

    invoke-direct {v6, v3}, Lcom/my/target/zh;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/my/target/hg;->k:Lcom/my/target/zh;

    const-string v3, "ad_view"

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {v0, v3}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    const-string v3, "title"

    invoke-virtual {v14, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {v14, v3}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    const-string v3, "description"

    invoke-virtual {v5, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {v5, v3}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    const-string v3, "image"

    invoke-virtual {v4, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {v4, v3}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    const-string v3, "cta"

    invoke-virtual {v15, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {v15, v3}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    const-string v3, "dismiss"

    invoke-virtual {v8, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {v8, v3}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    const-string v3, "play"

    invoke-virtual {v10, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {v10, v3}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    const-string v3, "ads_logo"

    invoke-virtual {v6, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {v6, v3}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    const-string v3, "media_dim"

    invoke-virtual {v12, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {v12, v3}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    const-string v3, "top_dim"

    move-object/from16 v9, p5

    invoke-virtual {v9, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {v9, v3}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    const-string v3, "bot_dim"

    move-object/from16 v10, v17

    invoke-virtual {v10, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {v10, v3}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    const-string v3, "age_bordering"

    invoke-virtual {v7, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {v7, v3}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    const-string v3, "ad_choices"

    move-object/from16 v11, v16

    invoke-virtual {v11, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {v11, v3}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    const-string v3, "sound_button"

    invoke-static {v2, v3}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    move-object/from16 v2, p4

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setClickArea(Lt2a;)V
    .locals 8

    iget-object v0, p0, Lcom/my/target/hg;->A:Lcom/my/target/c1;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/my/target/hg;->q:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/my/target/hg;->r:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Lcom/my/target/hg;->t:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, p0, Lcom/my/target/hg;->s:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v5, p0, Lcom/my/target/hg;->j:Lcom/my/target/zh;

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-boolean v0, p1, Lt2a;->m:Z

    iget-boolean v6, p1, Lt2a;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-boolean v0, p1, Lt2a;->l:Z

    const/4 v7, 0x0

    if-eqz v0, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_1
    move-object v0, v7

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v6, :cond_2

    move-object v0, p0

    goto :goto_1

    :cond_2
    move-object v0, v7

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p1, Lt2a;->a:Z

    if-eqz v0, :cond_3

    move-object v0, p0

    goto :goto_2

    :cond_3
    move-object v0, v7

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p1, Lt2a;->h:Z

    if-nez v0, :cond_5

    iget-boolean v0, p1, Lt2a;->i:Z

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move-object v0, v7

    goto :goto_4

    :cond_5
    :goto_3
    move-object v0, p0

    :goto_4
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p1, Lt2a;->b:Z

    if-eqz v0, :cond_6

    move-object v0, p0

    goto :goto_5

    :cond_6
    move-object v0, v7

    :goto_5
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean p1, p1, Lt2a;->d:Z

    if-eqz p1, :cond_7

    goto :goto_6

    :cond_7
    move-object p0, v7

    :goto_6
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setClickAreaLegacy(Lt2a;)V
    .locals 4

    iget-boolean v0, p1, Lt2a;->m:Z

    iget-boolean v1, p1, Lt2a;->g:Z

    iget-object v2, p0, Lcom/my/target/hg;->q:Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-boolean v0, p1, Lt2a;->l:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v1, :cond_2

    move-object v0, p0

    goto :goto_1

    :cond_2
    move-object v0, v3

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p1, Lt2a;->a:Z

    if-eqz v0, :cond_3

    move-object v0, p0

    goto :goto_2

    :cond_3
    move-object v0, v3

    :goto_2
    iget-object v1, p0, Lcom/my/target/hg;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p1, Lt2a;->h:Z

    if-nez v0, :cond_5

    iget-boolean v0, p1, Lt2a;->i:Z

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move-object v0, v3

    goto :goto_4

    :cond_5
    :goto_3
    move-object v0, p0

    :goto_4
    iget-object v1, p0, Lcom/my/target/hg;->t:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p1, Lt2a;->b:Z

    if-eqz v0, :cond_6

    move-object v0, p0

    goto :goto_5

    :cond_6
    move-object v0, v3

    :goto_5
    iget-object v1, p0, Lcom/my/target/hg;->s:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean p1, p1, Lt2a;->d:Z

    if-eqz p1, :cond_7

    move-object v3, p0

    :cond_7
    iget-object p0, p0, Lcom/my/target/hg;->j:Lcom/my/target/zh;

    invoke-virtual {p0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/my/target/hg;->h:Lcom/my/target/g5;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lcom/my/target/hg;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Lcom/my/target/g5;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput v2, p0, Lcom/my/target/hg;->P:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lcom/my/target/hg;->y:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Lcom/my/target/g5;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput v2, p0, Lcom/my/target/hg;->P:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/my/target/hg;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Lcom/my/target/g5;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput v1, p0, Lcom/my/target/hg;->P:I

    :goto_0
    iget-object p0, p0, Lcom/my/target/hg;->i:Landroid/widget/Button;

    if-eqz p2, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final b(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    iget-object p0, p0, Lcom/my/target/hg;->j:Lcom/my/target/zh;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final c(I)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/my/target/hg;->L:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object p0, p0, Lcom/my/target/hg;->j:Lcom/my/target/zh;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    filled-new-array {v1, p0}, [I

    move-result-object p0

    invoke-static {p0}, Ll3a;->e([I)I

    move-result p0

    int-to-double v1, p0

    const-wide v3, 0x3ff999999999999aL    # 1.6

    mul-double/2addr v1, v3

    int-to-double p0, p1

    cmpg-double p0, v1, p0

    if-gtz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public final d(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    iget-object p0, p0, Lcom/my/target/hg;->n:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final e(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    iget-object p0, p0, Lcom/my/target/hg;->m:Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/my/target/hg;->h:Lcom/my/target/g5;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/my/target/hg;->i:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public getCloseButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/my/target/hg;->d:Lcom/my/target/e6;

    return-object p0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 14

    iget-boolean v0, p0, Lcom/my/target/hg;->R:Z

    iget-object v1, p0, Lcom/my/target/hg;->l:Lcom/my/target/m;

    iget-object v2, p0, Lcom/my/target/hg;->k:Lcom/my/target/zh;

    iget-object v3, p0, Lcom/my/target/hg;->n:Landroid/view/View;

    iget-object v4, p0, Lcom/my/target/hg;->L:Landroid/view/View;

    iget-object v5, p0, Lcom/my/target/hg;->i:Landroid/widget/Button;

    iget-object v6, p0, Lcom/my/target/hg;->h:Lcom/my/target/g5;

    iget-object v7, p0, Lcom/my/target/hg;->b:Lcom/my/target/e6;

    iget-object v8, p0, Lcom/my/target/hg;->d:Lcom/my/target/e6;

    iget-object v9, p0, Lcom/my/target/hg;->g:Lcom/my/target/c3;

    iget-object v10, p0, Lcom/my/target/hg;->q:Landroid/widget/Button;

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v0, :cond_10

    if-ne p1, v8, :cond_1

    iget-object p0, v9, Lcom/my/target/c3;->l:Lcom/my/target/t2;

    if-eqz p0, :cond_0

    iget-object p1, p0, Lcom/my/target/t2;->g:Lcom/my/target/k0;

    invoke-virtual {p1}, Lcom/my/target/k0;->h()V

    invoke-virtual {p0}, Lcom/my/target/t2;->e()V

    iget-object p1, p0, Lcom/my/target/t2;->d:Lcom/my/target/n;

    invoke-interface {p1}, Lcom/my/target/n;->destroy()V

    iget-object p0, p0, Lcom/my/target/t2;->e:Lcom/my/target/o1;

    invoke-virtual {p0}, Lcom/my/target/o1;->b()V

    :cond_0
    invoke-virtual {v9}, Lcom/my/target/c3;->o()V

    iget-object p0, v9, Lcom/my/target/c3;->d:Lcom/my/target/m2$a;

    iget-object p1, v9, Lcom/my/target/c3;->b:Lxda;

    invoke-virtual {p0, p1}, Lcom/my/target/m2$a;->e(Lao9;)V

    return-void

    :cond_1
    if-ne p1, v7, :cond_2

    invoke-virtual {v9}, Lcom/my/target/c3;->k()V

    return-void

    :cond_2
    if-eq p1, v6, :cond_f

    if-ne p1, v5, :cond_3

    goto/16 :goto_1

    :cond_3
    if-ne p1, v4, :cond_4

    iget-object p0, p0, Lcom/my/target/hg;->Q:Le6a;

    invoke-virtual {v9, p0}, Lcom/my/target/c3;->b(Le6a;)V

    return-void

    :cond_4
    if-ne p1, v3, :cond_5

    iget-object p0, p0, Lcom/my/target/hg;->Q:Le6a;

    invoke-virtual {v9, p0}, Lcom/my/target/c3;->h(Le6a;)V

    return-void

    :cond_5
    if-ne p1, v2, :cond_7

    invoke-virtual {v9}, Lcom/my/target/c3;->o()V

    iget-object p0, v9, Lcom/my/target/c3;->b:Lxda;

    iget-object p0, p0, Lxda;->c0:Ljava/lang/String;

    if-nez p0, :cond_6

    goto/16 :goto_2

    :cond_6
    iget-object p1, v9, Lcom/my/target/c3;->e:Lcom/my/target/hg;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0, v11, v11, v11}, Ly14;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Intent;)Z

    return-void

    :cond_7
    if-ne p1, v1, :cond_8

    invoke-virtual {v9}, Lcom/my/target/c3;->d()V

    return-void

    :cond_8
    const/16 v0, 0x40

    if-ne p1, v10, :cond_9

    invoke-virtual {v10}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object p0, p0, Lcom/my/target/hg;->Q:Le6a;

    new-instance p1, Lup9;

    invoke-direct {p1, v0, p0}, Lup9;-><init>(ILe6a;)V

    invoke-virtual {v9, v11, v12, p1}, Lcom/my/target/c3;->a(Lao9;ILpfa;)V

    return-void

    :cond_9
    if-ne p1, v10, :cond_a

    move v12, v0

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/my/target/hg;->r:Landroid/widget/TextView;

    if-ne p1, v0, :cond_b

    move v12, v13

    goto :goto_0

    :cond_b
    iget-object v0, p0, Lcom/my/target/hg;->t:Landroid/widget/TextView;

    if-ne p1, v0, :cond_c

    const/16 v12, 0x80

    goto :goto_0

    :cond_c
    iget-object v0, p0, Lcom/my/target/hg;->s:Landroid/widget/TextView;

    if-ne p1, v0, :cond_d

    goto :goto_0

    :cond_d
    iget-object v0, p0, Lcom/my/target/hg;->j:Lcom/my/target/zh;

    if-ne p1, v0, :cond_e

    const/16 v12, 0x8

    goto :goto_0

    :cond_e
    const/16 v12, 0x800

    :goto_0
    iget-object p0, p0, Lcom/my/target/hg;->Q:Le6a;

    new-instance p1, Lup9;

    invoke-direct {p1, v12, p0}, Lup9;-><init>(ILe6a;)V

    invoke-virtual {v9, v11, v13, p1}, Lcom/my/target/c3;->a(Lao9;ILpfa;)V

    return-void

    :cond_f
    :goto_1
    iget p0, p0, Lcom/my/target/hg;->P:I

    invoke-virtual {v9, p0}, Lcom/my/target/c3;->g(I)V

    return-void

    :cond_10
    if-ne p1, v8, :cond_12

    iget-object p0, v9, Lcom/my/target/c3;->l:Lcom/my/target/t2;

    if-eqz p0, :cond_11

    iget-object p1, p0, Lcom/my/target/t2;->g:Lcom/my/target/k0;

    invoke-virtual {p1}, Lcom/my/target/k0;->h()V

    invoke-virtual {p0}, Lcom/my/target/t2;->e()V

    iget-object p1, p0, Lcom/my/target/t2;->d:Lcom/my/target/n;

    invoke-interface {p1}, Lcom/my/target/n;->destroy()V

    iget-object p0, p0, Lcom/my/target/t2;->e:Lcom/my/target/o1;

    invoke-virtual {p0}, Lcom/my/target/o1;->b()V

    :cond_11
    invoke-virtual {v9}, Lcom/my/target/c3;->o()V

    iget-object p0, v9, Lcom/my/target/c3;->d:Lcom/my/target/m2$a;

    iget-object p1, v9, Lcom/my/target/c3;->b:Lxda;

    invoke-virtual {p0, p1}, Lcom/my/target/m2$a;->e(Lao9;)V

    return-void

    :cond_12
    if-ne p1, v7, :cond_13

    invoke-virtual {v9}, Lcom/my/target/c3;->k()V

    return-void

    :cond_13
    if-eq p1, v6, :cond_1b

    if-ne p1, v5, :cond_14

    goto :goto_3

    :cond_14
    if-ne p1, v4, :cond_15

    new-instance p0, Ld6a;

    invoke-direct {p0}, Le6a;-><init>()V

    invoke-virtual {v9, p0}, Lcom/my/target/c3;->b(Le6a;)V

    return-void

    :cond_15
    if-ne p1, v3, :cond_16

    new-instance p0, Ld6a;

    invoke-direct {p0}, Le6a;-><init>()V

    invoke-virtual {v9, p0}, Lcom/my/target/c3;->h(Le6a;)V

    return-void

    :cond_16
    if-ne p1, v2, :cond_18

    invoke-virtual {v9}, Lcom/my/target/c3;->o()V

    iget-object p0, v9, Lcom/my/target/c3;->b:Lxda;

    iget-object p0, p0, Lxda;->c0:Ljava/lang/String;

    if-nez p0, :cond_17

    :goto_2
    return-void

    :cond_17
    iget-object p1, v9, Lcom/my/target/c3;->e:Lcom/my/target/hg;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0, v11, v11, v11}, Ly14;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Intent;)Z

    return-void

    :cond_18
    if-ne p1, v1, :cond_19

    invoke-virtual {v9}, Lcom/my/target/c3;->d()V

    return-void

    :cond_19
    if-ne p1, v10, :cond_1a

    invoke-virtual {v10}, Landroid/view/View;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_1a

    new-instance p0, Lgia;

    invoke-direct {p0}, Lgia;-><init>()V

    invoke-virtual {v9, v11, v12, p0}, Lcom/my/target/c3;->a(Lao9;ILpfa;)V

    return-void

    :cond_1a
    new-instance p0, Lgia;

    invoke-direct {p0}, Lgia;-><init>()V

    invoke-virtual {v9, v11, v13, p0}, Lcom/my/target/c3;->a(Lao9;ILpfa;)V

    return-void

    :cond_1b
    :goto_3
    iget p0, p0, Lcom/my/target/hg;->P:I

    invoke-virtual {v9, p0}, Lcom/my/target/c3;->g(I)V

    return-void
.end method

.method public setBackgroundImage(Lh14;)V
    .locals 0

    iget-object p0, p0, Lcom/my/target/hg;->j:Lcom/my/target/zh;

    invoke-virtual {p0, p1}, Lcom/my/target/zh;->setImageData(Lh14;)V

    return-void
.end method

.method public setBanner(Lxda;)V
    .locals 8

    iget-object v0, p1, Lxda;->X:Lev9;

    iget v1, v0, Lev9;->d:I

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget v1, v0, Lev9;->e:I

    iget v2, v0, Lev9;->f:I

    iget-object v3, p0, Lcom/my/target/hg;->r:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/my/target/hg;->s:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p1, Lao9;->Q:Lpp9;

    iget-boolean v1, v1, Lpp9;->c:Z

    iput-boolean v1, p0, Lcom/my/target/hg;->R:Z

    iget-object v1, p1, Lao9;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, 0x0

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/my/target/hg;->t:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lao9;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p1, Lao9;->n:Ljava/lang/String;

    iget-object v7, p1, Lao9;->g:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p1, Lao9;->n:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, " "

    invoke-static {v1, v7}, Lni0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-static {v1}, Lad2;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p1, Lao9;->g:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, p1, Ljia;->R:Lh14;

    iget-object v6, p0, Lcom/my/target/hg;->d:Lcom/my/target/e6;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lxha;->d:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    const/4 v4, 0x1

    invoke-virtual {v6, v1, v4}, Lcom/my/target/e6;->a(Landroid/graphics/Bitmap;Z)V

    goto :goto_2

    :cond_3
    sget v1, Lon9;->r:I

    iget-object v7, p0, Lcom/my/target/hg;->c:Lon9;

    iget-object v7, v7, Lon9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-static {v1}, Lkv9;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v6, v1, v4}, Lcom/my/target/e6;->a(Landroid/graphics/Bitmap;Z)V

    :cond_4
    :goto_2
    iget v1, v0, Lev9;->a:I

    iget v4, v0, Lev9;->b:I

    iget v6, p0, Lcom/my/target/hg;->O:I

    iget-object v7, p0, Lcom/my/target/hg;->q:Landroid/widget/Button;

    invoke-static {v7, v1, v4, v6}, Ll3a;->o(Landroid/widget/Button;III)V

    iget v0, v0, Lev9;->e:I

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1}, Lao9;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lao9;->e:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lao9;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lxda;->b0:Lh14;

    if-eqz v0, :cond_5

    iget-object v1, v0, Lxha;->d:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/my/target/hg;->k:Lcom/my/target/zh;

    invoke-virtual {v1, v0}, Lcom/my/target/zh;->setImageData(Lh14;)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object v0, p1, Lao9;->H:Lcom/my/target/q;

    iget-object v1, p0, Lcom/my/target/hg;->l:Lcom/my/target/m;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/my/target/q;->a:Lh14;

    iget-object v0, v0, Lxha;->d:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/my/target/m;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-boolean v0, p0, Lcom/my/target/hg;->R:Z

    iget-object p1, p1, Lao9;->r:Lt2a;

    if-eqz v0, :cond_7

    invoke-direct {p0, p1}, Lcom/my/target/hg;->setClickArea(Lt2a;)V

    return-void

    :cond_7
    invoke-direct {p0, p1}, Lcom/my/target/hg;->setClickAreaLegacy(Lt2a;)V

    return-void
.end method

.method public setPanelColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/my/target/hg;->p:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p0, p0, Lcom/my/target/hg;->o:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setSoundState(Z)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/my/target/hg;->b:Lcom/my/target/e6;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/my/target/hg;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p0, v0}, Lcom/my/target/e6;->a(Landroid/graphics/Bitmap;Z)V

    const-string p0, "sound_on"

    invoke-virtual {v1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/my/target/hg;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p0, v0}, Lcom/my/target/e6;->a(Landroid/graphics/Bitmap;Z)V

    const-string p0, "sound_off"

    invoke-virtual {v1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
