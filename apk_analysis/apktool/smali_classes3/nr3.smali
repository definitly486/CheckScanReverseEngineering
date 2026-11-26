.class public final Lnr3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldy1;


# instance fields
.field public final a:Ltr3;

.field public final b:Landroid/graphics/Path$FillType;

.field public final c:Lel;

.field public final d:Lfl;

.field public final e:Lhl;

.field public final f:Lhl;

.field public final g:Ljava/lang/String;

.field public final h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ltr3;Landroid/graphics/Path$FillType;Lel;Lfl;Lhl;Lhl;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnr3;->a:Ltr3;

    iput-object p3, p0, Lnr3;->b:Landroid/graphics/Path$FillType;

    iput-object p4, p0, Lnr3;->c:Lel;

    iput-object p5, p0, Lnr3;->d:Lfl;

    iput-object p6, p0, Lnr3;->e:Lhl;

    iput-object p7, p0, Lnr3;->f:Lhl;

    iput-object p1, p0, Lnr3;->g:Ljava/lang/String;

    iput-boolean p8, p0, Lnr3;->h:Z

    return-void
.end method


# virtual methods
.method public final a(Lox4;Lnw4;Lnd0;)Lsx1;
    .locals 1

    new-instance v0, Lor3;

    invoke-direct {v0, p1, p2, p3, p0}, Lor3;-><init>(Lox4;Lnw4;Lnd0;Lnr3;)V

    return-object v0
.end method
