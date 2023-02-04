import { ComponentFixture, TestBed } from '@angular/core/testing';

import { QuoteShowComponent } from './quote-show.component';

describe('QuoteShowComponent', () => {
  let component: QuoteShowComponent;
  let fixture: ComponentFixture<QuoteShowComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ QuoteShowComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(QuoteShowComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
