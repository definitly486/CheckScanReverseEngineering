.class public final Lds7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldy1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lds7$b;,
        Lds7$c;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ldl;

.field public final c:Ljava/util/ArrayList;

.field public final d:Lcl;

.field public final e:Lfl;

.field public final f:Ldl;

.field public final g:Lds7$b;

.field public final h:Lds7$c;

.field public final i:F

.field public final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ldl;Ljava/util/ArrayList;Lcl;Lfl;Ldl;Lds7$b;Lds7$c;FZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lds7;->a:Ljava/lang/String;

    iput-object p2, p0, Lds7;->b:Ldl;

    iput-object p3, p0, Lds7;->c:Ljava/util/ArrayList;

    iput-object p4, p0, Lds7;->d:Lcl;

    iput-object p5, p0, Lds7;->e:Lfl;

    iput-object p6, p0, Lds7;->f:Ldl;

    iput-object p7, p0, Lds7;->g:Lds7$b;

    iput-object p8, p0, Lds7;->h:Lds7$c;

    iput p9, p0, Lds7;->i:F

    iput-boolean p10, p0, Lds7;->j:Z

    return-void
.end method


# virtual methods
.method public final a(Lox4;Lnw4;Lnd0;)Lsx1;
    .locals 0

    new-instance p2, Lva8;

    invoke-direct {p2, p1, p3, p0}, Lva8;-><init>(Lox4;Lnd0;Lds7;)V

    return-object p2
.end method
