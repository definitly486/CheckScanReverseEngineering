.class public final La15;
.super La1;
.source "SourceFile"


# instance fields
.field public final a:Lz05$b;


# direct methods
.method public constructor <init>(Lz05$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La15;->a:Lz05$b;

    return-void
.end method


# virtual methods
.method public final e(Lv36$a;)V
    .locals 3

    new-instance v0, Lz05$c;

    iget-object p0, p0, La15;->a:Lz05$b;

    iget-boolean v1, p0, Lz05$b;->c:Z

    iget-object v2, p0, Lz05$b;->a:Ljava/util/ArrayList;

    iget-object p0, p0, Lz05$b;->b:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p0}, Lz05$c;-><init>(ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p1, Lv36$a;->e:Lz05$c;

    return-void
.end method
