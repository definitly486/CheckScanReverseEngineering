.class public final Li37;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li37$a;
    }
.end annotation


# static fields
.field public static final l:[C

.field public static final m:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lfz3;

.field public c:Ljava/lang/String;

.field public d:Lfz3$a;

.field public final e:Lb37$a;

.field public final f:Ljv3$a;

.field public g:Lj95;

.field public final h:Z

.field public final i:Llg5$a;

.field public final j:Lmi3$a;

.field public k:Lg37;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Li37;->l:[C

    const-string v0, "(.*/)?(\\.|%2e|%2E){1,2}(/.*)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Li37;->m:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lfz3;Ljava/lang/String;Ljv3;Lj95;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li37;->a:Ljava/lang/String;

    iput-object p2, p0, Li37;->b:Lfz3;

    iput-object p3, p0, Li37;->c:Ljava/lang/String;

    new-instance p1, Lb37$a;

    invoke-direct {p1}, Lb37$a;-><init>()V

    iput-object p1, p0, Li37;->e:Lb37$a;

    iput-object p5, p0, Li37;->g:Lj95;

    iput-boolean p6, p0, Li37;->h:Z

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljv3;->d()Ljv3$a;

    move-result-object p1

    iput-object p1, p0, Li37;->f:Ljv3$a;

    goto :goto_0

    :cond_0
    new-instance p1, Ljv3$a;

    invoke-direct {p1}, Ljv3$a;-><init>()V

    iput-object p1, p0, Li37;->f:Ljv3$a;

    :goto_0
    if-eqz p7, :cond_1

    new-instance p1, Lmi3$a;

    invoke-direct {p1}, Lmi3$a;-><init>()V

    iput-object p1, p0, Li37;->j:Lmi3$a;

    return-void

    :cond_1
    if-eqz p8, :cond_3

    new-instance p1, Llg5$a;

    invoke-direct {p1}, Llg5$a;-><init>()V

    iput-object p1, p0, Li37;->i:Llg5$a;

    sget-object p0, Llg5;->f:Lj95;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lj95;->b:Ljava/lang/String;

    const-string p3, "multipart"

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iput-object p0, p1, Llg5$a;->b:Lj95;

    return-void

    :cond_2
    const-string p1, "multipart != "

    invoke-static {p0, p1}, Leg;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_3
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    const-string v0, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    const/4 v1, 0x0

    iget-object p0, p0, Li37;->j:Lmi3$a;

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p0, Lmi3$a;->a:Ljava/util/ArrayList;

    const/16 v2, 0x53

    invoke-static {p1, v1, v1, v2, v0}, Lfz3$b;->a(Ljava/lang/String;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lmi3$a;->b:Ljava/util/ArrayList;

    invoke-static {p2, v1, v1, v2, v0}, Lfz3$b;->a(Ljava/lang/String;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p0, Lmi3$a;->a:Ljava/util/ArrayList;

    const/16 v2, 0x5b

    invoke-static {p1, v1, v1, v2, v0}, Lfz3$b;->a(Ljava/lang/String;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lmi3$a;->b:Ljava/util/ArrayList;

    invoke-static {p2, v1, v1, v2, v0}, Lfz3$b;->a(Ljava/lang/String;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "Content-Type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object p1, Lj95;->e:Ljava/util/regex/Pattern;

    invoke-static {p2}, Lj95$a;->a(Ljava/lang/String;)Lj95;

    move-result-object p1

    iput-object p1, p0, Li37;->g:Lj95;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Malformed content type: "

    invoke-static {p1, p2}, Lbj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object p0, p0, Li37;->f:Ljv3$a;

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, p2}, Ljv3$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Ljv3$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c(Ljv3;Lg37;)V
    .locals 1

    iget-object p0, p0, Li37;->i:Llg5$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Ljv3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Content-Length"

    invoke-virtual {p1, v0}, Ljv3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Llg5$c;

    invoke-direct {v0, p1, p2}, Llg5$c;-><init>(Ljv3;Lg37;)V

    iget-object p0, p0, Llg5$a;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const-string p0, "Unexpected header: Content-Length"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "Unexpected header: Content-Type"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    iget-object v0, p0, Li37;->c:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Li37;->b:Lfz3;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v3, Lfz3$a;

    invoke-direct {v3}, Lfz3$a;-><init>()V

    invoke-virtual {v3, v2, v0}, Lfz3$a;->c(Lfz3;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v3, v1

    :goto_0
    iput-object v3, p0, Li37;->d:Lfz3$a;

    if-eqz v3, :cond_0

    iput-object v1, p0, Li37;->c:Ljava/lang/String;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Malformed URL. Base: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", Relative: "

    iget-object p0, p0, Li37;->c:Ljava/lang/String;

    invoke-static {p1, p2, p0}, Lcg;->g(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_1
    iget-object p0, p0, Li37;->d:Lfz3$a;

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p0, Lfz3$a;->g:Ljava/util/ArrayList;

    if-nez p3, :cond_2

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lfz3$a;->g:Ljava/util/ArrayList;

    :cond_2
    const/16 v2, 0xd3

    const-string v3, " \"\'<>#&="

    invoke-static {p1, v0, v0, v2, v3}, Lfz3$b;->a(Ljava/lang/String;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lfz3$a;->g:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_3

    invoke-static {p2, v0, v0, v2, v3}, Lfz3$b;->a(Ljava/lang/String;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p0, Lfz3$a;->g:Ljava/util/ArrayList;

    if-nez p3, :cond_5

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lfz3$a;->g:Ljava/util/ArrayList;

    :cond_5
    const/16 v2, 0xdb

    const-string v3, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    invoke-static {p1, v0, v0, v2, v3}, Lfz3$b;->a(Ljava/lang/String;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lfz3$a;->g:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_6

    invoke-static {p2, v0, v0, v2, v3}, Lfz3$b;->a(Ljava/lang/String;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_6
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
