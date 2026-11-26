.class public final Lyads/tf0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/vl5;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lyads/vl5;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/tf0;->a:Lyads/vl5;

    iput-object v0, p0, Lyads/tf0;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public static final a(Lyads/xc3;)V
    .locals 0

    .line 23
    invoke-virtual {p0}, Lyads/xc3;->a()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/widget/ImageView;)Lyads/cy;
    .locals 2

    iget-object v0, p0, Lyads/tf0;->a:Lyads/vl5;

    new-instance v1, Lyads/sf0;

    invoke-direct {v1, p2}, Lyads/sf0;-><init>(Landroid/widget/ImageView;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p1, v1, p2, p2}, Lyads/zc3;->a(Ljava/lang/String;Lyads/yc3;II)Lyads/xc3;

    move-result-object p1

    new-instance p2, Lb9a;

    invoke-direct {p2, p1}, Lb9a;-><init>(Lyads/xc3;)V

    iget-object p0, p0, Lyads/tf0;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p2
.end method
