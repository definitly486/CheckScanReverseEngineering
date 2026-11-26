.class public final synthetic Lex4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lox4$a;


# instance fields
.field public final synthetic a:Lox4;

.field public final synthetic b:Lnf4;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lby4;


# direct methods
.method public synthetic constructor <init>(Lox4;Lnf4;Ljava/lang/Object;Lby4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lex4;->a:Lox4;

    iput-object p2, p0, Lex4;->b:Lnf4;

    iput-object p3, p0, Lex4;->c:Ljava/lang/Object;

    iput-object p4, p0, Lex4;->d:Lby4;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lex4;->c:Ljava/lang/Object;

    iget-object v1, p0, Lex4;->d:Lby4;

    iget-object v2, p0, Lex4;->a:Lox4;

    iget-object p0, p0, Lex4;->b:Lnf4;

    invoke-virtual {v2, p0, v0, v1}, Lox4;->a(Lnf4;Ljava/lang/Object;Lby4;)V

    return-void
.end method
