.class public final Lcb8$c;
.super Lcb8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcb8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ly03;",
            ">;"
        }
    .end annotation
.end field

.field public d:I


# direct methods
.method public constructor <init>(Ly03;)V
    .locals 2

    invoke-direct {p0, p1}, Lcb8;-><init>(Ly03;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcb8$c;->c:Ljava/util/ArrayList;

    const/4 v1, 0x2

    iput v1, p0, Lcb8$c;->d:I

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcb8$c;->d:I

    invoke-virtual {p1}, Ly03;->a()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lcb8$c;->d:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lcb8$c;->d:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcb8$c;->c:Ljava/util/ArrayList;

    const-string v0, " > "

    invoke-static {v0, p0}, Lja8;->i(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
