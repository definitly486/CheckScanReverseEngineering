.class public final Lby3;
.super Lh39;
.source "SourceFile"


# static fields
.field public static final A:[Ljava/lang/String;

.field public static final B:[Ljava/lang/String;

.field public static final C:[Ljava/lang/String;

.field public static final D:[Ljava/lang/String;

.field public static final E:[Ljava/lang/String;

.field public static final F:[Ljava/lang/String;

.field public static final G:[Ljava/lang/String;

.field public static final H:[Ljava/lang/String;

.field public static final I:[Ljava/lang/String;

.field public static final J:[Ljava/lang/String;

.field public static final K:[Ljava/lang/String;

.field public static final x:[Ljava/lang/String;

.field public static final y:[Ljava/lang/String;

.field public static final z:[Ljava/lang/String;


# instance fields
.field public l:Lcy3;

.field public m:Lcy3;

.field public n:Z

.field public o:Lorg/jsoup/nodes/h;

.field public p:Lorg/jsoup/nodes/l;

.field public q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/jsoup/nodes/h;",
            ">;"
        }
    .end annotation
.end field

.field public r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcy3;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljava/util/ArrayList;

.field public t:Lgx8$f;

.field public u:Z

.field public v:Z

.field public final w:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 86

    const-string v7, "template"

    const-string v8, "th"

    const-string v0, "applet"

    const-string v1, "caption"

    const-string v2, "html"

    const-string v3, "marquee"

    const-string v4, "object"

    const-string v5, "table"

    const-string v6, "td"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lby3;->x:[Ljava/lang/String;

    const-string v5, "ms"

    const-string v6, "mtext"

    const-string v1, "annotation-xml"

    const-string v2, "mi"

    const-string v3, "mn"

    const-string v4, "mo"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lby3;->y:[Ljava/lang/String;

    const-string v0, "desc"

    const-string v1, "foreignobject"

    const-string v2, "title"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lby3;->z:[Ljava/lang/String;

    const-string v1, "ol"

    const-string v3, "ul"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lby3;->A:[Ljava/lang/String;

    const-string v1, "button"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lby3;->B:[Ljava/lang/String;

    const-string v1, "html"

    const-string v3, "table"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lby3;->C:[Ljava/lang/String;

    const-string v1, "optgroup"

    const-string v3, "option"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lby3;->D:[Ljava/lang/String;

    const-string v11, "rt"

    const-string v12, "rtc"

    const-string v3, "dd"

    const-string v4, "dt"

    const-string v5, "li"

    const-string v6, "optgroup"

    const-string v7, "option"

    const-string v8, "p"

    const-string v9, "rb"

    const-string v10, "rp"

    filled-new-array/range {v3 .. v12}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lby3;->E:[Ljava/lang/String;

    const-string v19, "thead"

    const-string v20, "tr"

    const-string v3, "caption"

    const-string v4, "colgroup"

    const-string v5, "dd"

    const-string v6, "dt"

    const-string v7, "li"

    const-string v8, "optgroup"

    const-string v9, "option"

    const-string v10, "p"

    const-string v11, "rb"

    const-string v12, "rp"

    const-string v13, "rt"

    const-string v14, "rtc"

    const-string v15, "tbody"

    const-string v16, "td"

    const-string v17, "tfoot"

    const-string v18, "th"

    filled-new-array/range {v3 .. v20}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lby3;->F:[Ljava/lang/String;

    const-string v84, "wbr"

    const-string v85, "xmp"

    const-string v3, "address"

    const-string v4, "applet"

    const-string v5, "area"

    const-string v6, "article"

    const-string v7, "aside"

    const-string v8, "base"

    const-string v9, "basefont"

    const-string v10, "bgsound"

    const-string v11, "blockquote"

    const-string v12, "body"

    const-string v13, "br"

    const-string v14, "button"

    const-string v15, "caption"

    const-string v16, "center"

    const-string v17, "col"

    const-string v18, "colgroup"

    const-string v19, "dd"

    const-string v20, "details"

    const-string v21, "dir"

    const-string v22, "div"

    const-string v23, "dl"

    const-string v24, "dt"

    const-string v25, "embed"

    const-string v26, "fieldset"

    const-string v27, "figcaption"

    const-string v28, "figure"

    const-string v29, "footer"

    const-string v30, "form"

    const-string v31, "frame"

    const-string v32, "frameset"

    const-string v33, "h1"

    const-string v34, "h2"

    const-string v35, "h3"

    const-string v36, "h4"

    const-string v37, "h5"

    const-string v38, "h6"

    const-string v39, "head"

    const-string v40, "header"

    const-string v41, "hgroup"

    const-string v42, "hr"

    const-string v43, "html"

    const-string v44, "iframe"

    const-string v45, "img"

    const-string v46, "input"

    const-string v47, "keygen"

    const-string v48, "li"

    const-string v49, "link"

    const-string v50, "listing"

    const-string v51, "main"

    const-string v52, "marquee"

    const-string v53, "menu"

    const-string v54, "meta"

    const-string v55, "nav"

    const-string v56, "noembed"

    const-string v57, "noframes"

    const-string v58, "noscript"

    const-string v59, "object"

    const-string v60, "ol"

    const-string v61, "p"

    const-string v62, "param"

    const-string v63, "plaintext"

    const-string v64, "pre"

    const-string v65, "script"

    const-string v66, "search"

    const-string v67, "section"

    const-string v68, "select"

    const-string v69, "source"

    const-string v70, "style"

    const-string v71, "summary"

    const-string v72, "table"

    const-string v73, "tbody"

    const-string v74, "td"

    const-string v75, "template"

    const-string v76, "textarea"

    const-string v77, "tfoot"

    const-string v78, "th"

    const-string v79, "thead"

    const-string v80, "title"

    const-string v81, "tr"

    const-string v82, "track"

    const-string v83, "ul"

    filled-new-array/range {v3 .. v85}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lby3;->G:[Ljava/lang/String;

    const-string v7, "ms"

    const-string v8, "mtext"

    const-string v3, "annotation-xml"

    const-string v4, "mi"

    const-string v5, "mn"

    const-string v6, "mo"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lby3;->H:[Ljava/lang/String;

    const-string v1, "ms"

    const-string v3, "mtext"

    const-string v4, "mi"

    const-string v5, "mn"

    const-string v6, "mo"

    filled-new-array {v4, v5, v6, v1, v3}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lby3;->I:[Ljava/lang/String;

    const-string v1, "foreignObject"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lby3;->J:[Ljava/lang/String;

    const-string v7, "select"

    const-string v8, "textarea"

    const-string v1, "button"

    const-string v2, "fieldset"

    const-string v3, "input"

    const-string v4, "keygen"

    const-string v5, "object"

    const-string v6, "output"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lby3;->K:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lh39;-><init>()V

    const/4 v0, 0x0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lby3;->w:[Ljava/lang/String;

    return-void
.end method

.method public static G(Lorg/jsoup/nodes/h;)Z
    .locals 4

    iget-object p0, p0, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object v0, p0, Ljj8;->b:Ljava/lang/String;

    iget-object p0, p0, Ljj8;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "http://www.w3.org/1998/Math/MathML"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "http://www.w3.org/2000/svg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    return v2

    :pswitch_0
    sget-object v0, Lby3;->H:[Ljava/lang/String;

    invoke-static {p0, v0}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_1
    sget-object v0, Lby3;->J:[Ljava/lang/String;

    invoke-static {p0, v0}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_2
    sget-object v0, Lby3;->G:[Ljava/lang/String;

    invoke-static {p0, v0}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x7bdeeb30 -> :sswitch_2
        -0x11a64b39 -> :sswitch_1
        0x66d36ffa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static I(Ljava/util/ArrayList;Lorg/jsoup/nodes/h;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/jsoup/nodes/h;",
            ">;",
            "Lorg/jsoup/nodes/h;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/16 v2, 0x100

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    add-int/lit16 v0, v0, -0x101

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-lt v1, v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/h;

    if-ne v2, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return v3
.end method


# virtual methods
.method public final A(Lgx8$b;Lorg/jsoup/nodes/h;)V
    .locals 1

    iget-object p0, p1, Lgx8$b;->d:Lm54;

    invoke-virtual {p0}, Lm54;->e()Ljava/lang/String;

    move-result-object p0

    instance-of p1, p1, Lgx8$a;

    if-eqz p1, :cond_0

    new-instance p1, Lorg/jsoup/nodes/c;

    invoke-direct {p1, p0}, Lorg/jsoup/nodes/m;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p2, Lorg/jsoup/nodes/h;->e:Ljj8;

    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Ljj8;->f(I)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lorg/jsoup/nodes/e;

    invoke-direct {p1, p0}, Lorg/jsoup/nodes/m;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/jsoup/nodes/r;

    invoke-direct {p1, p0}, Lorg/jsoup/nodes/m;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p2, p1}, Lorg/jsoup/nodes/h;->E(Lorg/jsoup/nodes/n;)V

    return-void
.end method

.method public final B(Lgx8$c;)V
    .locals 1

    new-instance v0, Lorg/jsoup/nodes/d;

    iget-object p1, p1, Lgx8$c;->d:Lm54;

    invoke-virtual {p1}, Lm54;->e()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jsoup/nodes/m;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lh39;->a()Lorg/jsoup/nodes/h;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/h;->E(Lorg/jsoup/nodes/n;)V

    return-void
.end method

.method public final C(Lgx8$g;)Lorg/jsoup/nodes/h;
    .locals 6

    const-string v0, "http://www.w3.org/1999/xhtml"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lby3;->o(Lgx8$g;Ljava/lang/String;Z)Lorg/jsoup/nodes/h;

    move-result-object v0

    iget-object v1, v0, Lorg/jsoup/nodes/h;->e:Ljj8;

    invoke-virtual {p0, v0}, Lby3;->p(Lorg/jsoup/nodes/h;)V

    iget-boolean p1, p1, Lgx8$h;->f:Z

    if-eqz p1, :cond_2

    iget p1, v1, Ljj8;->e:I

    or-int/lit8 p1, p1, 0x20

    iput p1, v1, Ljj8;->e:I

    invoke-virtual {v1}, Ljj8;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, v1, Ljj8;->e:I

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ljj8;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lh39;->c:Ljx8;

    sget-object v2, Lkx8;->Data:Lkx8;

    invoke-virtual {p1, v2}, Ljx8;->o(Lkx8;)V

    iget-object p1, p0, Lh39;->c:Ljx8;

    iget-object v2, p0, Lby3;->t:Lgx8$f;

    invoke-virtual {v2}, Lgx8$h;->m()Lgx8$h;

    iget-object v3, v1, Ljj8;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lgx8$h;->j(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljx8;->g(Lgx8;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lh39;->c:Ljx8;

    iget-object v2, v1, Ljj8;->d:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Ljx8;->b:Lp36;

    invoke-virtual {v3}, Lp36;->i()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ln36;

    iget-object p1, p1, Ljx8;->a:Lea1;

    const-string v5, "Tag [%s] cannot be self-closing; not a void tag"

    invoke-direct {v4, p1, v5, v2}, Ln36;-><init>(Lea1;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljj8;->h()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lh39;->d()Lorg/jsoup/nodes/h;

    :cond_3
    return-object v0
.end method

.method public final D(Lgx8$g;)Lorg/jsoup/nodes/h;
    .locals 2

    const-string v0, "http://www.w3.org/1999/xhtml"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lby3;->o(Lgx8$g;Ljava/lang/String;Z)Lorg/jsoup/nodes/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lby3;->p(Lorg/jsoup/nodes/h;)V

    invoke-virtual {p0}, Lh39;->d()Lorg/jsoup/nodes/h;

    return-object p1
.end method

.method public final E(Lgx8$g;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lby3;->o(Lgx8$g;Ljava/lang/String;Z)Lorg/jsoup/nodes/h;

    move-result-object p2

    invoke-virtual {p0, p2}, Lby3;->p(Lorg/jsoup/nodes/h;)V

    iget-boolean p1, p1, Lgx8$h;->f:Z

    if-eqz p1, :cond_0

    iget-object p1, p2, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget p2, p1, Ljj8;->e:I

    or-int/lit8 p2, p2, 0x20

    iput p2, p1, Ljj8;->e:I

    invoke-virtual {p0}, Lh39;->d()Lorg/jsoup/nodes/h;

    :cond_0
    return-void
.end method

.method public final F(Lgx8$g;ZZ)V
    .locals 2

    const-string v0, "http://www.w3.org/1999/xhtml"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lby3;->o(Lgx8$g;Ljava/lang/String;Z)Lorg/jsoup/nodes/h;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/l;

    if-eqz p3, :cond_0

    const-string p3, "template"

    invoke-virtual {p0, p3}, Lby3;->H(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    iput-object p1, p0, Lby3;->p:Lorg/jsoup/nodes/l;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lby3;->p:Lorg/jsoup/nodes/l;

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lby3;->p(Lorg/jsoup/nodes/h;)V

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lh39;->d()Lorg/jsoup/nodes/h;

    :cond_2
    return-void
.end method

.method public final H(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lby3;->t(Ljava/lang/String;)Lorg/jsoup/nodes/h;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final J([Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/h;

    iget-object v2, v2, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object v2, v2, Ljj8;->d:Ljava/lang/String;

    invoke-static {v2, p1}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final K(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lh39;->d()Lorg/jsoup/nodes/h;

    move-result-object v1

    iget-object v1, v1, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object v2, v1, Ljj8;->d:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Ljj8;->b:Ljava/lang/String;

    const-string v2, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final L()V
    .locals 1

    iget-object v0, p0, Lby3;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lby3;->r:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcy3;

    :cond_0
    return-void
.end method

.method public final M(Lcy3;)V
    .locals 0

    iget-object p0, p0, Lby3;->r:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final N()V
    .locals 11

    iget-object v0, p0, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lby3;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    iget-object v0, p0, Lby3;->q:Ljava/util/ArrayList;

    invoke-static {v2, v0}, Ldd2;->b(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/h;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_8

    iget-object v3, p0, Lh39;->e:Ljava/util/ArrayList;

    invoke-static {v3, v0}, Lby3;->I(Ljava/util/ArrayList;Lorg/jsoup/nodes/h;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lby3;->q:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v4, v3, -0xc

    const/4 v5, 0x0

    if-gez v4, :cond_3

    move v4, v5

    :cond_3
    sub-int/2addr v3, v2

    move v6, v3

    :cond_4
    if-ne v6, v4, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lby3;->q:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/h;

    if-eqz v0, :cond_6

    iget-object v7, p0, Lh39;->e:Ljava/util/ArrayList;

    invoke-static {v7, v0}, Lby3;->I(Ljava/util/ArrayList;Lorg/jsoup/nodes/h;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_6
    move v2, v5

    :goto_1
    if-nez v2, :cond_7

    iget-object v0, p0, Lby3;->q:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/h;

    :cond_7
    invoke-static {v0}, Lyb9;->e(Ljava/lang/Object;)V

    new-instance v2, Lorg/jsoup/nodes/h;

    invoke-virtual {v0}, Lorg/jsoup/nodes/h;->v()Ljava/lang/String;

    move-result-object v4

    iget-object v7, v0, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object v7, v7, Ljj8;->d:Ljava/lang/String;

    iget-object v8, p0, Lh39;->h:Lq36;

    iget-object v9, p0, Lh39;->i:Lbk8;

    iget-boolean v8, v8, Lq36;->a:Z

    const-string v10, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v9, v4, v7, v10, v8}, Lbk8;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljj8;

    move-result-object v4

    invoke-virtual {v0}, Lorg/jsoup/nodes/h;->h()Lorg/jsoup/nodes/b;

    move-result-object v7

    invoke-virtual {v7}, Lorg/jsoup/nodes/b;->h()Lorg/jsoup/nodes/b;

    move-result-object v7

    invoke-direct {v2, v4, v1, v7}, Lorg/jsoup/nodes/h;-><init>(Ljj8;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    invoke-virtual {p0, v2}, Lby3;->p(Lorg/jsoup/nodes/h;)V

    iget-object v4, p0, Lby3;->q:Ljava/util/ArrayList;

    invoke-virtual {v4, v6, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-ne v6, v3, :cond_6

    :cond_8
    :goto_2
    return-void
.end method

.method public final O(Lorg/jsoup/nodes/h;)V
    .locals 2

    iget-object v0, p0, Lby3;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lby3;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/h;

    if-ne v1, p1, :cond_0

    iget-object p0, p0, Lby3;->q:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final P(Lorg/jsoup/nodes/h;)V
    .locals 2

    iget-object v0, p0, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/h;

    if-ne v1, p1, :cond_0

    iget-object p0, p0, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final Q()Z
    .locals 9

    iget-object v0, p0, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/16 v2, 0x100

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    add-int/lit16 v0, v0, -0x101

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-object v2, p0, Lby3;->l:Lcy3;

    iget-object v4, p0, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcy3;->InBody:Lcy3;

    iput-object v4, p0, Lby3;->l:Lcy3;

    :cond_1
    move v4, v3

    :goto_1
    const/4 v5, 0x1

    if-lt v1, v0, :cond_19

    iget-object v6, p0, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/nodes/h;

    if-ne v1, v0, :cond_2

    move v4, v5

    :cond_2
    if-eqz v6, :cond_3

    iget-object v7, v6, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object v7, v7, Ljj8;->d:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string v7, ""

    :goto_2
    iget-object v6, v6, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object v6, v6, Ljj8;->b:Ljava/lang/String;

    const-string v8, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto/16 :goto_6

    :cond_4
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v8, -0x1

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string v6, "caption"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto/16 :goto_3

    :cond_5
    const/16 v8, 0xe

    goto/16 :goto_3

    :sswitch_1
    const-string v6, "thead"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto/16 :goto_3

    :cond_6
    const/16 v8, 0xd

    goto/16 :goto_3

    :sswitch_2
    const-string v6, "tfoot"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto/16 :goto_3

    :cond_7
    const/16 v8, 0xc

    goto/16 :goto_3

    :sswitch_3
    const-string v6, "tbody"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto/16 :goto_3

    :cond_8
    const/16 v8, 0xb

    goto/16 :goto_3

    :sswitch_4
    const-string v6, "table"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto/16 :goto_3

    :cond_9
    const/16 v8, 0xa

    goto/16 :goto_3

    :sswitch_5
    const-string v6, "html"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    goto/16 :goto_3

    :cond_a
    const/16 v8, 0x9

    goto/16 :goto_3

    :sswitch_6
    const-string v6, "head"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    goto/16 :goto_3

    :cond_b
    const/16 v8, 0x8

    goto/16 :goto_3

    :sswitch_7
    const-string v6, "body"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    goto :goto_3

    :cond_c
    const/4 v8, 0x7

    goto :goto_3

    :sswitch_8
    const-string v6, "tr"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    goto :goto_3

    :cond_d
    const/4 v8, 0x6

    goto :goto_3

    :sswitch_9
    const-string v6, "th"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    goto :goto_3

    :cond_e
    const/4 v8, 0x5

    goto :goto_3

    :sswitch_a
    const-string v6, "td"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    goto :goto_3

    :cond_f
    const/4 v8, 0x4

    goto :goto_3

    :sswitch_b
    const-string v6, "colgroup"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    goto :goto_3

    :cond_10
    const/4 v8, 0x3

    goto :goto_3

    :sswitch_c
    const-string v6, "select"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    goto :goto_3

    :cond_11
    const/4 v8, 0x2

    goto :goto_3

    :sswitch_d
    const-string v6, "template"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    goto :goto_3

    :cond_12
    move v8, v5

    goto :goto_3

    :sswitch_e
    const-string v6, "frameset"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    goto :goto_3

    :cond_13
    move v8, v3

    :goto_3
    packed-switch v8, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    sget-object v0, Lcy3;->InCaption:Lcy3;

    iput-object v0, p0, Lby3;->l:Lcy3;

    goto/16 :goto_8

    :pswitch_1
    sget-object v0, Lcy3;->InTableBody:Lcy3;

    iput-object v0, p0, Lby3;->l:Lcy3;

    goto/16 :goto_8

    :pswitch_2
    sget-object v0, Lcy3;->InTable:Lcy3;

    iput-object v0, p0, Lby3;->l:Lcy3;

    goto :goto_8

    :pswitch_3
    iget-object v0, p0, Lby3;->o:Lorg/jsoup/nodes/h;

    if-nez v0, :cond_14

    sget-object v0, Lcy3;->BeforeHead:Lcy3;

    goto :goto_4

    :cond_14
    sget-object v0, Lcy3;->AfterHead:Lcy3;

    :goto_4
    iput-object v0, p0, Lby3;->l:Lcy3;

    goto :goto_8

    :pswitch_4
    if-nez v4, :cond_15

    sget-object v0, Lcy3;->InHead:Lcy3;

    iput-object v0, p0, Lby3;->l:Lcy3;

    goto :goto_8

    :pswitch_5
    sget-object v0, Lcy3;->InBody:Lcy3;

    iput-object v0, p0, Lby3;->l:Lcy3;

    goto :goto_8

    :pswitch_6
    sget-object v0, Lcy3;->InRow:Lcy3;

    iput-object v0, p0, Lby3;->l:Lcy3;

    goto :goto_8

    :pswitch_7
    if-nez v4, :cond_15

    sget-object v0, Lcy3;->InCell:Lcy3;

    iput-object v0, p0, Lby3;->l:Lcy3;

    goto :goto_8

    :cond_15
    :goto_5
    if-eqz v4, :cond_16

    sget-object v0, Lcy3;->InBody:Lcy3;

    iput-object v0, p0, Lby3;->l:Lcy3;

    goto :goto_8

    :cond_16
    :goto_6
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_1

    :pswitch_8
    sget-object v0, Lcy3;->InColumnGroup:Lcy3;

    iput-object v0, p0, Lby3;->l:Lcy3;

    goto :goto_8

    :pswitch_9
    sget-object v0, Lcy3;->InSelect:Lcy3;

    iput-object v0, p0, Lby3;->l:Lcy3;

    goto :goto_8

    :pswitch_a
    iget-object v0, p0, Lby3;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_17

    iget-object v0, p0, Lby3;->r:Ljava/util/ArrayList;

    invoke-static {v5, v0}, Ldd2;->b(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcy3;

    goto :goto_7

    :cond_17
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_18

    iput-object v0, p0, Lby3;->l:Lcy3;

    goto :goto_8

    :cond_18
    new-instance p0, Lorg/jsoup/helper/ValidationException;

    const-string v0, "Bug: no template insertion mode on stack!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_b
    sget-object v0, Lcy3;->InFrameset:Lcy3;

    iput-object v0, p0, Lby3;->l:Lcy3;

    :cond_19
    :goto_8
    iget-object p0, p0, Lby3;->l:Lcy3;

    if-eq p0, v2, :cond_1a

    return v5

    :cond_1a
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x620c002b -> :sswitch_e
        -0x4ec53386 -> :sswitch_d
        -0x3600cb04 -> :sswitch_c
        -0x25eb9b01 -> :sswitch_b
        0xe70 -> :sswitch_a
        0xe74 -> :sswitch_9
        0xe7e -> :sswitch_8
        0x2e39a2 -> :sswitch_7
        0x30cde0 -> :sswitch_6
        0x3107ab -> :sswitch_5
        0x6903bce -> :sswitch_4
        0x690e016 -> :sswitch_3
        0x692b2e2 -> :sswitch_2
        0x6937454 -> :sswitch_1
        0x20ef99e6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Lgx8;)Z
    .locals 9

    iget-object v0, p0, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lh39;->a()Lorg/jsoup/nodes/h;

    move-result-object v0

    iget-object v2, v0, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object v3, v2, Ljj8;->b:Ljava/lang/String;

    const-string v4, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v4, v2, Ljj8;->b:Ljava/lang/String;

    const-string v5, "http://www.w3.org/1998/Math/MathML"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v2, Ljj8;->d:Ljava/lang/String;

    sget-object v7, Lby3;->I:[Ljava/lang/String;

    invoke-static {v6, v7}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p1}, Lgx8;->e()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, p1

    check-cast v6, Lgx8$g;

    iget-object v7, v6, Lgx8$h;->e:Ljava/lang/String;

    const-string v8, "mglyph"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "malignmark"

    iget-object v6, v6, Lgx8$h;->e:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v6, p1, Lgx8;->a:Lgx8$i;

    sget-object v7, Lgx8$i;->Character:Lgx8$i;

    if-ne v6, v7, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v6, "annotation-xml"

    if-eqz v3, :cond_4

    invoke-virtual {v0, v6}, Lorg/jsoup/nodes/n;->t(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lgx8;->e()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, p1

    check-cast v3, Lgx8$g;

    iget-object v3, v3, Lgx8$h;->e:Ljava/lang/String;

    const-string v7, "svg"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0, v6}, Lorg/jsoup/nodes/n;->t(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "encoding"

    invoke-virtual {v0, v3}, Lorg/jsoup/nodes/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmo5;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "text/html"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "application/xhtml+xml"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    const-string v0, "http://www.w3.org/2000/svg"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v2, Ljj8;->c:Ljava/lang/String;

    sget-object v2, Lby3;->J:[Ljava/lang/String;

    invoke-static {v0, v2}, Lja8;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_0
    invoke-virtual {p1}, Lgx8;->e()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p1, Lgx8;->a:Lgx8$i;

    sget-object v2, Lgx8$i;->Character:Lgx8$i;

    if-ne v0, v2, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Lgx8;->c()Z

    move-result v1

    :cond_8
    :goto_1
    if-eqz v1, :cond_9

    iget-object v0, p0, Lby3;->l:Lcy3;

    goto :goto_2

    :cond_9
    sget-object v0, Lcy3;->ForeignContent:Lcy3;

    :goto_2
    invoke-virtual {v0, p1, p0}, Lcy3;->f(Lgx8;Lby3;)Z

    move-result p0

    return p0
.end method

.method public final i(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/h;
    .locals 3

    iget-object v0, p0, Lh39;->e:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lby3;->I(Ljava/util/ArrayList;Lorg/jsoup/nodes/h;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_2

    iget-object v2, p0, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/h;

    if-ne v2, p1, :cond_1

    iget-object p0, p0, Lh39;->e:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/h;

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final j(Lorg/jsoup/nodes/h;)V
    .locals 6

    iget-object v0, p0, Lby3;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    add-int/lit8 v0, v0, -0xd

    const/4 v2, 0x0

    if-gez v0, :cond_0

    move v0, v2

    :cond_0
    :goto_0
    if-lt v1, v0, :cond_4

    iget-object v3, p0, Lby3;->q:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/h;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p1, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object v4, v4, Ljj8;->d:Ljava/lang/String;

    iget-object v5, v3, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object v5, v5, Ljj8;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lorg/jsoup/nodes/h;->h()Lorg/jsoup/nodes/b;

    move-result-object v4

    invoke-virtual {v3}, Lorg/jsoup/nodes/h;->h()Lorg/jsoup/nodes/b;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/jsoup/nodes/b;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    iget-object p0, p0, Lby3;->q:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public final k()V
    .locals 2

    :cond_0
    iget-object v0, p0, Lby3;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lby3;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lby3;->q:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/h;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    :cond_2
    return-void
.end method

.method public final varargs l([Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/h;

    iget-object v2, v1, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object v2, v2, Ljj8;->b:Ljava/lang/String;

    const-string v3, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object v2, v2, Ljj8;->d:Ljava/lang/String;

    invoke-static {v2, p1}, Lja8;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "html"

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/n;->t(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lh39;->d()Lorg/jsoup/nodes/h;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final m()V
    .locals 2

    const-string v0, "table"

    const-string v1, "template"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lby3;->l([Ljava/lang/String;)V

    return-void
.end method

.method public final n()V
    .locals 2

    const-string v0, "tr"

    const-string v1, "template"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lby3;->l([Ljava/lang/String;)V

    return-void
.end method

.method public final o(Lgx8$g;Ljava/lang/String;Z)Lorg/jsoup/nodes/h;
    .locals 7

    iget-object v0, p1, Lgx8$h;->g:Lorg/jsoup/nodes/b;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lorg/jsoup/nodes/b;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    if-nez p3, :cond_2

    iget-object v2, p0, Lh39;->h:Lq36;

    iget-boolean v2, v2, Lq36;->b:Z

    if-nez v2, :cond_2

    move v2, v1

    :goto_0
    iget v3, v0, Lorg/jsoup/nodes/b;->b:I

    if-ge v2, v3, :cond_2

    iget-object v3, v0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/jsoup/nodes/b;->q(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    invoke-static {v3}, Lmo5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lh39;->h:Lq36;

    iget v3, v0, Lorg/jsoup/nodes/b;->b:I

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    iget-boolean v2, v2, Lq36;->b:Z

    move v3, v1

    :cond_4
    iget v4, v0, Lorg/jsoup/nodes/b;->b:I

    if-ge v1, v4, :cond_8

    iget-object v4, v0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aget-object v4, v4, v1

    add-int/lit8 v1, v1, 0x1

    move v5, v1

    :goto_1
    iget v6, v0, Lorg/jsoup/nodes/b;->b:I

    if-ge v5, v6, :cond_4

    if-eqz v2, :cond_5

    iget-object v6, v0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    :cond_5
    if-nez v2, :cond_7

    iget-object v6, v0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v5}, Lorg/jsoup/nodes/b;->s(I)V

    add-int/lit8 v5, v5, -0x1

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    move v1, v3

    :goto_2
    if-lez v1, :cond_9

    iget-object v1, p1, Lgx8$h;->e:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Dropped duplicate attribute(s) in tag [%s]"

    invoke-virtual {p0, v2, v1}, Lh39;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    :goto_3
    iget-object v1, p1, Lgx8$h;->d:Lm54;

    invoke-virtual {v1}, Lm54;->e()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lgx8$h;->e:Ljava/lang/String;

    if-eqz p3, :cond_a

    sget-object p3, Lq36;->d:Lq36;

    goto :goto_4

    :cond_a
    iget-object p3, p0, Lh39;->h:Lq36;

    :goto_4
    iget-object p0, p0, Lh39;->i:Lbk8;

    iget-boolean p3, p3, Lq36;->a:Z

    invoke-virtual {p0, v1, p1, p2, p3}, Lbk8;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljj8;

    move-result-object p0

    iget-object p1, p0, Ljj8;->d:Ljava/lang/String;

    const-string p2, "form"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    new-instance p1, Lorg/jsoup/nodes/l;

    invoke-direct {p1, p0, v0}, Lorg/jsoup/nodes/l;-><init>(Ljj8;Lorg/jsoup/nodes/b;)V

    return-object p1

    :cond_b
    new-instance p1, Lorg/jsoup/nodes/h;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2, v0}, Lorg/jsoup/nodes/h;-><init>(Ljj8;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    return-object p1
.end method

.method public final p(Lorg/jsoup/nodes/h;)V
    .locals 12

    iget-object v0, p1, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object v1, p0, Lh39;->a:Lw36;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    :goto_0
    iget-object v1, p0, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x200

    if-lt v1, v3, :cond_4

    invoke-virtual {p0}, Lh39;->d()Lorg/jsoup/nodes/h;

    move-result-object v1

    iget-object v3, p0, Lby3;->o:Lorg/jsoup/nodes/h;

    if-ne v1, v3, :cond_1

    iput-object v2, p0, Lby3;->o:Lorg/jsoup/nodes/h;

    :cond_1
    iget-object v3, p0, Lby3;->p:Lorg/jsoup/nodes/l;

    if-ne v1, v3, :cond_2

    iput-object v2, p0, Lby3;->p:Lorg/jsoup/nodes/l;

    :cond_2
    invoke-virtual {p0, v1}, Lby3;->O(Lorg/jsoup/nodes/h;)V

    const-string v2, "template"

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/n;->t(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lby3;->k()V

    iget-object v1, p0, Lby3;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0}, Lby3;->L()V

    :cond_3
    invoke-virtual {p0}, Lby3;->Q()Z

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lby3;->p:Lorg/jsoup/nodes/l;

    if-eqz v1, :cond_5

    iget-object v1, v0, Ljj8;->b:Ljava/lang/String;

    const-string v3, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Ljj8;->d:Ljava/lang/String;

    sget-object v3, Lby3;->K:[Ljava/lang/String;

    invoke-static {v1, v3}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lby3;->p:Lorg/jsoup/nodes/l;

    iget-object v1, v1, Lorg/jsoup/nodes/l;->k:Ldw2;

    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v1, p0, Lh39;->a:Lw36;

    iget-object v1, v1, Lw36;->b:Lp36;

    invoke-virtual {v1}, Lp36;->i()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "xmlns"

    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/n;->r(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Ljj8;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Ljj8;->c:Ljava/lang/String;

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Invalid xmlns attribute [%s] on tag [%s]"

    invoke-virtual {p0, v1, v0}, Lh39;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iget-boolean v0, p0, Lby3;->v:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lh39;->a()Lorg/jsoup/nodes/h;

    move-result-object v0

    iget-object v0, v0, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object v0, v0, Ljj8;->d:Ljava/lang/String;

    sget-object v1, Lcy3$z;->z:[Ljava/lang/String;

    invoke-static {v0, v1}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "table"

    invoke-virtual {p0, v0}, Lby3;->t(Ljava/lang/String;)Lorg/jsoup/nodes/h;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    iget-object v4, v0, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    if-eqz v4, :cond_7

    move v5, v1

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v0}, Lby3;->i(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/h;

    move-result-object v4

    :goto_1
    move v5, v3

    goto :goto_2

    :cond_8
    iget-object v4, p0, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/h;

    goto :goto_1

    :goto_2
    if-eqz v5, :cond_11

    invoke-static {v0}, Lyb9;->e(Ljava/lang/Object;)V

    iget-object v4, v0, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    invoke-static {v4}, Lyb9;->e(Ljava/lang/Object;)V

    iget-object v4, p1, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    iget-object v5, v0, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    if-ne v4, v5, :cond_9

    if-eqz v4, :cond_9

    invoke-virtual {v4, p1}, Lorg/jsoup/nodes/n;->C(Lorg/jsoup/nodes/n;)V

    :cond_9
    iget-object v4, v0, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    invoke-virtual {v0}, Lorg/jsoup/nodes/n;->D()I

    move-result v0

    new-array v5, v1, [Lorg/jsoup/nodes/n;

    aput-object p1, v5, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Lorg/jsoup/nodes/h;->p()Ljava/util/List;

    move-result-object v6

    aget-object v7, v5, v3

    invoke-virtual {v7}, Lorg/jsoup/nodes/n;->A()Lorg/jsoup/nodes/h;

    move-result-object v7

    if-eqz v7, :cond_e

    iget-object v8, v7, Lorg/jsoup/nodes/h;->f:Lorg/jsoup/nodes/h$a;

    invoke-virtual {v8}, Ljava/util/AbstractCollection;->size()I

    move-result v8

    if-ne v8, v1, :cond_e

    invoke-virtual {v7}, Lorg/jsoup/nodes/h;->p()Ljava/util/List;

    move-result-object v8

    move v9, v1

    :goto_3
    add-int/lit8 v10, v9, -0x1

    if-lez v9, :cond_b

    aget-object v9, v5, v10

    move-object v11, v8

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-eq v9, v11, :cond_a

    goto :goto_6

    :cond_a
    move v9, v10

    goto :goto_3

    :cond_b
    iget-object v8, v7, Lorg/jsoup/nodes/h;->f:Lorg/jsoup/nodes/h$a;

    invoke-virtual {v8}, Ljava/util/AbstractCollection;->size()I

    move-result v8

    move v9, v3

    :goto_4
    iget-object v10, v7, Lorg/jsoup/nodes/h;->f:Lorg/jsoup/nodes/h$a;

    if-ge v9, v8, :cond_c

    invoke-virtual {v10, v9}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/jsoup/nodes/n;

    iput-object v2, v10, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_c
    invoke-virtual {v10}, Ljava/util/AbstractCollection;->clear()V

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v0, v2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    :goto_5
    add-int/lit8 v0, v1, -0x1

    if-lez v1, :cond_d

    aget-object v1, v5, v0

    iput-object v4, v1, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    move v1, v0

    goto :goto_5

    :cond_d
    iget-object v0, v4, Lorg/jsoup/nodes/h;->f:Lorg/jsoup/nodes/h$a;

    iput-boolean v3, v0, Lorg/jsoup/nodes/h$a;->b:Z

    goto :goto_7

    :cond_e
    :goto_6
    aget-object v1, v5, v3

    if-eqz v1, :cond_10

    iget-object v2, v1, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    if-eqz v2, :cond_f

    invoke-virtual {v2, v1}, Lorg/jsoup/nodes/n;->C(Lorg/jsoup/nodes/n;)V

    :cond_f
    iput-object v4, v1, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v0, v1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    iget-object v0, v4, Lorg/jsoup/nodes/h;->f:Lorg/jsoup/nodes/h$a;

    iput-boolean v3, v0, Lorg/jsoup/nodes/h$a;->b:Z

    goto :goto_7

    :cond_10
    new-instance p0, Lorg/jsoup/helper/ValidationException;

    const-string p1, "Array must not contain any null objects"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    invoke-virtual {v4, p1}, Lorg/jsoup/nodes/h;->E(Lorg/jsoup/nodes/n;)V

    goto :goto_7

    :cond_12
    invoke-virtual {p0}, Lh39;->a()Lorg/jsoup/nodes/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/h;->E(Lorg/jsoup/nodes/n;)V

    :goto_7
    iget-object p0, p0, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final q(Lcy3;)V
    .locals 4

    iget-object v0, p0, Lh39;->a:Lw36;

    iget-object v0, v0, Lw36;->b:Lp36;

    invoke-virtual {v0}, Lp36;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh39;->a:Lw36;

    iget-object v0, v0, Lw36;->b:Lp36;

    new-instance v1, Ln36;

    iget-object v2, p0, Lh39;->b:Lea1;

    iget-object v3, p0, Lh39;->g:Lgx8;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lh39;->g:Lgx8;

    filled-new-array {v3, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Unexpected %s token [%s] when in state [%s]"

    invoke-direct {v1, v2, p1, p0}, Ln36;-><init>(Lea1;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 2

    :goto_0
    invoke-virtual {p0}, Lh39;->a()Lorg/jsoup/nodes/h;

    move-result-object v0

    iget-object v0, v0, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object v0, v0, Ljj8;->d:Ljava/lang/String;

    sget-object v1, Lby3;->E:[Ljava/lang/String;

    invoke-static {v0, v1}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lh39;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lh39;->d()Lorg/jsoup/nodes/h;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final s(Z)V
    .locals 2

    if-eqz p1, :cond_0

    sget-object p1, Lby3;->F:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p1, Lby3;->E:[Ljava/lang/String;

    :goto_0
    invoke-virtual {p0}, Lh39;->a()Lorg/jsoup/nodes/h;

    move-result-object v0

    iget-object v0, v0, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object v0, v0, Ljj8;->b:Ljava/lang/String;

    const-string v1, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lh39;->a()Lorg/jsoup/nodes/h;

    move-result-object v0

    iget-object v0, v0, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object v0, v0, Ljj8;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lh39;->d()Lorg/jsoup/nodes/h;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final t(Ljava/lang/String;)Lorg/jsoup/nodes/h;
    .locals 5

    iget-object v0, p0, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/16 v2, 0x100

    if-lt v1, v2, :cond_0

    add-int/lit16 v0, v0, -0x101

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lt v1, v0, :cond_2

    iget-object v2, p0, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/h;

    iget-object v3, v2, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object v4, v3, Ljj8;->d:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v3, v3, Ljj8;->b:Ljava/lang/String;

    const-string v4, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TreeBuilder{currentToken="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lh39;->g:Lgx8;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lby3;->l:Lcy3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentElement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lh39;->a()Lorg/jsoup/nodes/h;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lby3;->w:[Ljava/lang/String;

    aput-object p1, v1, v0

    sget-object p1, Lby3;->x:[Ljava/lang/String;

    sget-object v0, Lby3;->B:[Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, Lby3;->x([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final v(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lby3;->w:[Ljava/lang/String;

    aput-object p1, v1, v0

    sget-object p1, Lby3;->x:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lby3;->x([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final w(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/h;

    iget-object v2, v2, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object v2, v2, Ljj8;->d:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    sget-object v3, Lby3;->D:[Ljava/lang/String;

    invoke-static {v2, v3}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final x([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_5

    iget-object v2, p0, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/h;

    iget-object v2, v2, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object v3, v2, Ljj8;->d:Ljava/lang/String;

    iget-object v2, v2, Ljj8;->b:Ljava/lang/String;

    const-string v4, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3, p1}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    invoke-static {v3, p2}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_4

    invoke-static {v3, p3}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_2
    sget-object v4, Lby3;->x:[Ljava/lang/String;

    if-ne p2, v4, :cond_4

    const-string v4, "http://www.w3.org/1998/Math/MathML"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lby3;->y:[Ljava/lang/String;

    invoke-static {v3, v4}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    const-string v4, "http://www.w3.org/2000/svg"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lby3;->z:[Ljava/lang/String;

    invoke-static {v3, v2}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final y(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lby3;->w:[Ljava/lang/String;

    aput-object p1, v1, v0

    sget-object p1, Lby3;->C:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lby3;->x([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final z(Lgx8$b;Z)V
    .locals 5

    iget-object v0, p1, Lgx8$b;->d:Lm54;

    invoke-virtual {v0}, Lm54;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    const p2, 0xfffd

    invoke-virtual {v1, v2, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    sget-object p2, Lgx8$b;->e:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, p2, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v0}, Lm54;->d()V

    iput-object p2, v0, Lm54;->b:Ljava/lang/Object;

    :goto_1
    invoke-virtual {p0}, Lh39;->a()Lorg/jsoup/nodes/h;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lby3;->A(Lgx8$b;Lorg/jsoup/nodes/h;)V

    return-void
.end method
