.class public final Lyads/mx2;
.super Lyads/ur;
.source "SourceFile"


# instance fields
.field public final e:Lnl3;


# direct methods
.method public constructor <init>(Lyads/sr;Lnl3;)V
    .locals 0

    invoke-direct {p0, p1}, Lyads/ur;-><init>(Lyads/sr;)V

    iput-object p2, p0, Lyads/mx2;->e:Lnl3;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/regex/PatternSyntaxException;)V
    .locals 0

    iget-object p0, p0, Lyads/mx2;->e:Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
